"""
Parses bag files. Thanks to "GNM: A General Navigation Model to Drive Any Robot" 
by Dhruv Shah et el. paper for open sourcing their code.
link: https://github.com/PrieureDeSion/drive-any-robot
"""
from typing import Any, Optional, Union, Callable
import os
from pathlib import Path
import pickle

from rich import print
import rosbag
from pyntcloud import PyntCloud
import rosbag
from tqdm import tqdm
from scipy.signal import savgol_filter

from parser_utils import *


class SCANDParser:
    def __init__(self, cfg):
        self.cfg = cfg

    def process_images(self, im_list: list, img_process_func: Callable) -> list:
        """
        Process image data from a topic that publishes ros images into a list of PIL images
        """
        images = []
        for img_msg in im_list:
            img = img_process_func(img_msg)
            images.append(img)
        return images

    def process_odom(
        self,
        odom_list: list,
        action_list: list,
        odom_process_func: Any,
        ang_offset: float = 0.0,
    ) -> dict[np.ndarray, np.ndarray]:
        """
        Process odom data from a topic that publishes nav_msgs/Odometry into position and yaw
        """
        xys = []
        yaws = []
        vws = []
        for odom_msg, action_msg in zip(odom_list, action_list):
            xy, vw, yaw = odom_process_func(odom_msg, action_msg, ang_offset)
            xys.append(xy)
            yaws.append(yaw)
            vws.append(vw)
        return {"position": np.array(xys), "yaw": np.array(yaws), "vw": np.array(vws)}

    def get_images_and_odom(
        self,
        bag: rosbag.Bag,
        imtopics: Union[list[str], str],
        odomtopics: Union[list[str], str],
        lidartopics: Union[list[str], str],
        actiontopics: Union[list[str], str],
        img_process_func: Any,
        lidar_process_func: Any,
        odom_process_func: Any,
        rate: float = 4.0,
        ang_offset: float = 0.0,
    ):
        """
        Get image, depth, lidar and odom data from a bag file

        Args:
            bag (rosbag.Bag): bag file
            imtopics (Union[list[str], str]): topic name(s) for image data
            odomtopics (Union[list[str], str]): topic name(s) for odom data
            lidartopics (Union[list[str], str]): topic name(s) for lidar data
            actiontopics (Union[list[str], str]): topic name(s) for action data
            img_process_func (Any): function to process image data
            lidar_process_func (Any): function to process lidar data
            odom_process_func (Any): function to process odom data
            rate (float, optional): rate to sample data. Defaults to 4.0.
            ang_offset (float, optional): angle offset to add to odom data. Defaults to 0.0.
        Returns:
            img_data (list): list of PIL images
            lidar_data (list): list of np.arrays
            traj_data (list): list of odom and linear/angular velocity data
        """
        # check if bag has both topics
        odomtopic = None
        actiontopic = None
        imtopic = None
        pctopic = None
        if type(imtopics) == str:
            imtopic = imtopics
        else:
            for imt in imtopics:
                if bag.get_message_count(imt) > 0:
                    imtopic = imt
                    break
        if type(odomtopics) == str:
            odomtopic = odomtopics
        else:
            for ot in odomtopics:
                if bag.get_message_count(ot) > 0:
                    odomtopic = ot
                    break
        if type(actiontopics) == str:
            actiontopic = actiontopics
        else:
            for ac in actiontopics:
                if bag.get_message_count(ac) > 0:
                    actiontopic = ac
                    break
        if type(lidartopics) == str:
            pctopic = lidartopics
        else:
            for pc in lidartopics:
                if bag.get_message_count(pc) > 0:
                    pctopic = pc
                    break
        if not (imtopic and actiontopic and odomtopic and pctopic):
            # bag doesn't have topics
            return None, None, None

        synced_imdata = []
        synced_odomdata = []
        synced_actiondata = []
        synced_pcdata = []
        # get start time of bag in seconds
        currtime = bag.get_start_time()
        starttime = currtime
        print(f"{starttime = }")

        curr_imdata = None
        curr_odomdata = None
        curr_actiondata = None
        curr_pcdata = None
        times = []

        for topic, msg, t in bag.read_messages(
            topics=[imtopic, odomtopic, actiontopic, pctopic]
        ):
            if t.to_sec() - starttime < 5:
                # skip the first five seconds
                continue
            if topic == imtopic:
                curr_imdata = msg
            elif topic == odomtopic:
                curr_odomdata = msg
            elif topic == actiontopic:
                curr_actiondata = msg
            elif topic == pctopic:
                curr_pcdata = process_pointclouds(msg)

            if (t.to_sec() - currtime) >= 1.0 / rate:
                if (
                    curr_imdata is not None
                    and curr_odomdata is not None
                    and curr_actiondata is not None
                    and curr_pcdata is not None
                ):
                    synced_imdata.append(curr_imdata)
                    synced_odomdata.append(curr_odomdata)
                    synced_actiondata.append(curr_actiondata)
                    synced_pcdata.append(curr_pcdata)
                currtime = t.to_sec()
                times.append(currtime - starttime)

        img_data = self.process_images(synced_imdata, img_process_func)
        pc_data = synced_pcdata

        traj_data = self.process_odom(
            synced_odomdata,
            synced_actiondata,
            odom_process_func,
            ang_offset=ang_offset,
        )
        # smooth pos and actions
        traj_data["yaw"] = savgol_filter(
            traj_data["yaw"], window_length=31, polyorder=3, mode="nearest"
        )
        traj_data["vw"][:, 0] = savgol_filter(
            traj_data["vw"][:, 0], window_length=31, polyorder=3, mode="nearest"
        )
        traj_data["vw"][:, 1] = savgol_filter(
            traj_data["vw"][:, 1], window_length=31, polyorder=3, mode="nearest"
        )
        traj_data["position"][:, 0] = savgol_filter(
            traj_data["position"][:, 0], window_length=31, polyorder=3, mode="nearest"
        )
        traj_data["position"][:, 1] = savgol_filter(
            traj_data["position"][:, 1], window_length=31, polyorder=3, mode="nearest"
        )

        return img_data, traj_data, pc_data

    def parse_bags(self, bag_path) -> None:
        # id = 0
        # bag_files = Path(self.cfg.bags_dir).resolve()
        save_dir = Path(self.cfg.save_dir).resolve()
        # bag_files = [str(x) for x in bag_files.iterdir() if x.suffix == ".bag"]

        try:
            b = rosbag.Bag(bag_path)
        except rosbag.ROSBagException as e:
            print(e)
            print(f"Error loading {bag_path}. Skipping...")

        robot_name = "spot" if "spot" in bag_path.lower() else "jackal"
        self.cfg.topics = None
        if "spot" in bag_path.lower():
            self.cfg.topics = self.cfg.spot
        elif "jackal" in bag_path.lower():
            self.cfg.topics = self.cfg.jackal
        else:
            raise Exception("Invalid robot type!")
        # name is that folders separated by _ and then the last part of the path
        traj_name = "_".join(bag_path.split("/")[-1:])[:-4]

        # parse data
        (
            bag_img_data,
            bag_traj_data,
            bag_pc_data,
        ) = self.get_images_and_odom(
            b,
            self.cfg.topics.rgb,
            self.cfg.topics.odom,
            self.cfg.topics.lidar,
            self.cfg.topics.cmd_vel,
            eval(self.cfg.functions.rgb),
            eval(self.cfg.functions.lidar),
            eval(self.cfg.functions.odom),
            rate=self.cfg.sample_rate,
            ang_offset=self.cfg.ang_offset,
        )
        if bag_img_data is None or bag_traj_data is None:
            print(
                f"{bag_path} did not have the topics we were looking for. Skipping..."
            )
        # remove backwards movement
        cut_trajs = filter_backwards_scand(bag_img_data, bag_traj_data, bag_pc_data)
        for i, (img_data_i, traj_data_i, pc_data_i) in enumerate(cut_trajs):
            if len(img_data_i) < self.cfg.skip_traj_shorter:
                # skip trajectories with less than 20 frames
                continue

            traj_name_i = f"{traj_name}_{i}"
            traj_folder_i = save_dir / traj_name_i
            output_rgb = str(traj_folder_i / "rgb")
            output_pc = str(traj_folder_i / "point_cloud")
            # make a folder for the traj
            if not os.path.exists(traj_folder_i):
                os.makedirs(traj_folder_i)
            if not os.path.exists(output_rgb):
                os.makedirs(output_rgb)
            if not os.path.exists(output_pc):
                os.makedirs(output_pc)
            with open(str(traj_folder_i / "traj_data.pkl"), "wb") as f:
                pickle.dump(traj_data_i, f)
            # save the image data to disk
            for i, img in enumerate(img_data_i):
                img.save(os.path.join(output_rgb, f"{i}.jpg"))
            # save the pc data to disk
            for i, pc in enumerate(pc_data_i):
                pc = PyntCloud(pc)
                pc.to_file(os.path.join(output_pc, f"{i}.ply"))
