"""
Main script to parse bag files.
"""
import os
import argparse
import pickle
from pathlib import Path
from tqdm import tqdm
from tqdm.contrib.concurrent import process_map, thread_map

from helpers import get_conf
from musohu_parser import MuSoHuParser
from scand_parser import SCANDParser


def create_samples(input_path, obs_window: int = 6, pred_window: int = 8) -> dict:
    """Create multiple samples from the parsed data folder

    input_path (PosixPath): directory of the parsed trajectory
    obs_window (int): observation window (history)
    pred_window (int): prediction window
    """
    with input_path.open("rb") as f:
        data = pickle.load(f)

    all_frames = sorted(list([x for x in (input_path.parent / "rgb").iterdir()]), key=lambda x: int(x.name.split(".")[0]))
    traj_len = len(data["position"])
    seq_len = obs_window + pred_window
    positions = []
    goal_positions = []
    yaws = []
    goal_yaws = []
    vws = []
    goal_vws = []
    past_frames = []
    goal_frames = []

    for i in range(traj_len - seq_len):
        # past and future positions
        positions.append(data["position"][i : i + obs_window])
        goal_positions.append(data["position"][i + obs_window : i + seq_len])
        # past and future yaw
        yaws.append(data["yaw"][i : i + obs_window])
        goal_yaws.append(data["yaw"][i + obs_window : i + seq_len])
        # past and future vw
        vws.append(data["vw"][i : i + obs_window])
        goal_vws.append(data["vw"][i + obs_window : i + seq_len])
        # store image addresses
        past_frames.append(all_frames[i : i + obs_window])
        goal_frames.append(all_frames[i + obs_window : i + seq_len])

    post_processed = {
        "past_positions": positions,
        "future_positions": goal_positions,
        "past_yaw": yaws,
        "future_yaw": goal_yaws,
        "past_vw": vws,
        "future_vw": goal_vws,
        "past_frames": past_frames,
        "future_frames": goal_frames,
    }
    return post_processed


def merge(base_dict: dict, new_dict: dict):
    """Merges two dictionary together

    base_dict (dict): The base dictionary to be updated
    new_dict (dict): The new data to be added to the base dictionary
    """
    # assert base_dict is None, "Base dictionary cannot be None"
    assert (
        base_dict.keys() == new_dict.keys()
    ), "The two dictionaries must have the same keys"
    for key in base_dict.keys():
        base_dict[key].extend(new_dict[key])

    return base_dict


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-n",
        "--name",
        default="musohu",
        type=str,
        help="Dataset name.",
    )
    parser.add_argument(
        "-c",
        "--conf",
        default="./conf/parser",
        type=str,
        help="Config file address.",
    )
    parser.add_argument(
        "-cs",
        "--create_samples",
        action="store_true",
        help="Create samples. Applicable only after parsing bags.",
    )
    args = parser.parse_args()
    cfg_dir = args.conf
    cfg = get_conf(cfg_dir)
    # dataset = "musohu" if "musohu" in cfg_dir.lower() else "scand"
    dataset = args.name
    if args.create_samples:
        # Creating samples
        save_path = Path(cfg.parsed_dir) / "samples.pkl"
        if (save_path).exists():
            save_path.rename(f"{save_path.stem} + '_old' + {save_path.suffix}")
        # List all the pickle files
        list_pickles = list(save_path.parent.glob("**/*.pkl"))
        # list_pickles = [x for x in Path(cfg.save_dir).iterdir() if x.suffix == '.pkl']
        # Base dictionary to store data
        base_dict = dict()
        # Iterate over processed files and create samples from them
        bar = tqdm(list_pickles, desc="Creating samples: ")
        for file_name in bar:
            bar.set_postfix(Trajectory=f"{file_name}")
            post_processed = create_samples(
                file_name, obs_window=cfg.obs_len, pred_window=cfg.pred_len
            )
            if bool(base_dict):
                base_dict = merge(base_dict, post_processed)
            else:
                base_dict = post_processed

        # Saving the final file
        with save_path.open("wb") as f:
            pickle.dump(base_dict, f)
    else:
        if dataset == "musohu":
            cfg.musohu.update({"sample_rate": cfg.sample_rate})
            cfg.musohu.update({"save_dir": cfg.parsed_dir})
            parser = MuSoHuParser(cfg.musohu)
            bag_files = Path(parser.cfg.bags_dir).resolve()
            bag_files = [str(x) for x in bag_files.iterdir() if x.suffix == ".bag"]
            # if there are ram limitations, reduce the number of max_workers
            process_map(parser.parse_bags, bag_files, max_workers=os.cpu_count() - 4)

        elif dataset == "scand":
            cfg.scand.update({"sample_rate": cfg.sample_rate})
            cfg.scand.update({"save_dir": cfg.parsed_dir})
            parser = SCANDParser(cfg.scand)
            bag_files = Path(parser.cfg.bags_dir).resolve()
            bag_files = [str(x) for x in bag_files.iterdir() if x.suffix == ".bag"]
            process_map(parser.parse_bags, bag_files, max_workers=os.cpu_count() - 4)
        else:
            raise Exception("Invalid dataset!")
