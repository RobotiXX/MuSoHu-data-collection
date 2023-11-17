import cv2
import numpy as np
from PIL import Image
import torchvision.transforms.functional as TF
import sensor_msgs.point_cloud2 as pc2
import pandas as pd
import io


def process_rgb(msg) -> Image:
    """
    Process image data from a topic that publishes sensor_msgs/CompressedImage to a PIL image
    """
    IMAGE_SIZE = (320, 240)
    IMAGE_ASPECT_RATIO = 4 / 3
    # convert sensor_msgs/CompressedImage to PIL image
    img = Image.open(io.BytesIO(msg.data))
    # center crop image to 4:3 aspect ratio
    w, h = img.size
    img = TF.center_crop(
        img, (h, int(h * IMAGE_ASPECT_RATIO))
    )  # crop to the right ratio
    # resize image to IMAGE_SIZE
    img = img.resize(IMAGE_SIZE)
    return img


def process_depth(msg) -> Image:
    """
    Process image data from a topic that publishes sensor_msgs/CompressedImage to a PIL image
    """
    IMAGE_SIZE = (320, 240)
    IMAGE_ASPECT_RATIO = 4 / 3
    # convert sensor_msgs/CompressedImage to PIL image
    img = np.frombuffer(msg.data, np.uint8)
    img = cv2.imdecode(img, cv2.IMREAD_ANYDEPTH)
    img = cv2.normalize(img, None, 0, 1.0, cv2.NORM_MINMAX, dtype=cv2.CV_32F)
    img = Image.fromarray(img)
    # center crop image to 4:3 aspect ratio
    w, h = img.size
    img = TF.center_crop(
        img, (h, int(h * IMAGE_ASPECT_RATIO))
    )  # crop to the right ratio
    viz_img = TF.resize(img, IMAGE_SIZE)
    # resize image to IMAGE_SIZE
    img = img.resize(IMAGE_SIZE)
    return img


def quat_to_yaw(
    x: np.ndarray,
    y: np.ndarray,
    z: np.ndarray,
    w: np.ndarray,
) -> np.ndarray:
    """
    Convert a batch quaternion into a yaw angle
    yaw is rotation around z in radians (counterclockwise)
    """
    t3 = 2.0 * (w * z + x * y)
    t4 = 1.0 - 2.0 * (y * y + z * z)
    return np.arctan2(t3, t4)


def process_pointclouds(msg):
    """
    Process lidar data from a velodyne topic
    """
    pc = list(pc2.read_points(msg, skip_nans=True, field_names=("x", "y", "z")))
    pc = pd.DataFrame(np.array(pc), columns=("x", "y", "z"))
    return pc


def nav_to_xy_yaw(
    odom_msg, action_msg, ang_offset: float
) -> tuple[list[float], list[float], float]:
    """
    Process odom data from a topic that publishes nav_msgs/Odometry into position
    """

    position = odom_msg.pose.pose.position
    orientation = odom_msg.pose.pose.orientation
    v = action_msg.twist.twist.linear.x
    w = action_msg.twist.twist.angular.z
    yaw = (
        quat_to_yaw(orientation.x, orientation.y, orientation.z, orientation.w)
        + ang_offset
    )
    return [position.x, position.y], [v, w], yaw


def joystickValue(x, scale, kDeadZone=0.02):
    if kDeadZone != 0.0 and abs(x) < kDeadZone:
        return 0.0
    return ((x - np.sign(x) * kDeadZone) / (1.0 - kDeadZone) * scale)


def nav_to_xy_yaw_scand(
    odom_msg, action_msg, ang_offset: float
) -> tuple[list[float], list[float], float]:
    """
    Process odom data from a topic that publishes nav_msgs/Odometry into position
    """

    position = odom_msg.pose.pose.position
    orientation = odom_msg.pose.pose.orientation
    # joystick
    joy_axes = action_msg.axes
    linear_x = joystickValue(
        joy_axes[4], -1.6)
    linear_y = joystickValue(
        joy_axes[3], -1.6)
    angular_z = joystickValue(
        joy_axes[0], -np.deg2rad(90.0), kDeadZone=0.0)
    v = linear_x
    w = angular_z
    yaw = (
        quat_to_yaw(orientation.x, orientation.y, orientation.z, orientation.w)
        + ang_offset
    )
    return [position.x, position.y], [v, w], yaw


def is_backwards(
    pos1: np.ndarray, yaw1: float, pos2: np.ndarray,
    eps: float = 1e-5
) -> bool:
    """
    Check if the trajectory is going backwards given the position and yaw of two points
    Args:
        pos1: position of the first point

    """
    dx, dy = pos2 - pos1
    return dx * np.cos(yaw1) + dy * np.sin(yaw1) < eps


def filter_backwards(
    img_list: list[Image.Image],
    traj_data: dict[np.ndarray],
    depth_list: dict[np.ndarray],
    pc_list: dict[np.ndarray],
    start_slack: int = 0,
    end_slack: int = 0,
) -> tuple[list[np.ndarray], list[int]]:
    """
    Cut out non-positive velocity segments of the trajectory
    Args:
        traj_type: type of trajectory to cut
        img_list: list of images
        traj_data: dictionary of position and yaw data
        start_slack: number of points to ignore at the start of the trajectory
        end_slack: number of points to ignore at the end of the trajectory
    Returns:
        cut_trajs: list of cut trajectories
        start_times: list of start times of the cut trajectories
    """
    traj_pos = traj_data["position"]
    traj_yaws = traj_data["yaw"]
    traj_actions = traj_data["vw"]
    cut_trajs = []
    start = True

    def process_pair(traj_pair: list) -> tuple[list, dict, list, list]:
        new_img_list, new_traj_data, new_depth_list, new_pc_list = zip(*traj_pair)
        new_traj_data = np.array(new_traj_data)
        new_traj_pos = new_traj_data[:, :2]
        new_traj_vws = new_traj_data[:, 2:4]
        new_traj_yaws = new_traj_data[:, 4]
        return (
            new_img_list,
            {"position": new_traj_pos, "yaw": new_traj_yaws, "vw": new_traj_vws},
            new_depth_list,
            new_pc_list,
        )

    for i in range(max(start_slack, 1), len(traj_pos) - end_slack):
        pos1 = traj_pos[i - 1]
        yaw1 = traj_yaws[i - 1]
        pos2 = traj_pos[i]
        if not is_backwards(pos1, yaw1, pos2):
            if start:
                new_traj_pairs = [
                    (
                        img_list[i - 1],
                        [*traj_pos[i - 1], *traj_actions[i - 1], traj_yaws[i - 1]],
                        depth_list[i - 1],
                        pc_list[i - 1],
                    )
                ]
                start = False
            elif i == len(traj_pos) - end_slack - 1:
                cut_trajs.append(process_pair(new_traj_pairs))
            else:
                new_traj_pairs.append(
                    (
                        img_list[i - 1],
                        [*traj_pos[i - 1], *traj_actions[i - 1], traj_yaws[i - 1]],
                        depth_list[i - 1],
                        pc_list[i - 1],
                    )
                )
        elif not start:
            cut_trajs.append(process_pair(new_traj_pairs))
            start = True
    return cut_trajs


def filter_backwards_scand(
    img_list: list[Image.Image],
    traj_data: dict[np.ndarray],
    pc_list: dict[np.ndarray],
    start_slack: int = 0,
    end_slack: int = 0,
) -> tuple[list[np.ndarray], list[int]]:
    """
    Cut out non-positive velocity segments of the trajectory
    Args:
        traj_type: type of trajectory to cut
        img_list: list of images
        traj_data: dictionary of position and yaw data
        start_slack: number of points to ignore at the start of the trajectory
        end_slack: number of points to ignore at the end of the trajectory
    Returns:
        cut_trajs: list of cut trajectories
        start_times: list of start times of the cut trajectories
    """
    traj_pos = traj_data["position"]
    traj_yaws = traj_data["yaw"]
    traj_actions = traj_data["vw"]
    cut_trajs = []
    start = True

    def process_pair(traj_pair: list) -> tuple[list, dict, list, list]:
        new_img_list, new_traj_data, new_pc_list = zip(*traj_pair)
        new_traj_data = np.array(new_traj_data)
        new_traj_pos = new_traj_data[:, :2]
        new_traj_vws = new_traj_data[:, 2:4]
        new_traj_yaws = new_traj_data[:, 4]
        return (
            new_img_list,
            {"position": new_traj_pos, "yaw": new_traj_yaws, "vw": new_traj_vws},
            new_pc_list,
        )

    for i in range(max(start_slack, 1), len(traj_pos) - end_slack):
        pos1 = traj_pos[i - 1]
        yaw1 = traj_yaws[i - 1]
        pos2 = traj_pos[i]
        if not is_backwards(pos1, yaw1, pos2):
            if start:
                new_traj_pairs = [
                    (
                        img_list[i - 1],
                        [*traj_pos[i - 1], *traj_actions[i - 1], traj_yaws[i - 1]],
                        pc_list[i - 1],
                    )
                ]
                start = False
            elif i == len(traj_pos) - end_slack - 1:
                cut_trajs.append(process_pair(new_traj_pairs))
            else:
                new_traj_pairs.append(
                    (
                        img_list[i - 1],
                        [*traj_pos[i - 1], *traj_actions[i - 1], traj_yaws[i - 1]],
                        pc_list[i - 1],
                    )
                )
        elif not start:
            cut_trajs.append(process_pair(new_traj_pairs))
            start = True
    return cut_trajs
