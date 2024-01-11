from pathlib import Path
import pickle
from typing import Union

import cv2
from PIL import Image
import numpy as np
import math
import matplotlib.pyplot as plt
import torch
from torchvision import transforms
from torch.utils.data import Dataset
from pyntcloud import PyntCloud


def cartesian_to_polar(x: float, y: float) -> torch.Tensor:
    """Convert cartesian coordinates to polar coordinates
    x: (float) x direction
    y: (float) y direction
    """
    # Calculating radius
    radius = math.sqrt(x * x + y * y)
    # Calculating angle (theta) in radian
    theta = math.atan2(y, x)
    return torch.Tensor([radius, theta]).float()


def imread(address: str):
    img = cv2.imread(address, cv2.IMREAD_UNCHANGED)
    if len(img.shape) == 3:
        img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    return Image.fromarray(img)


class SocialNavDataset(Dataset):
    def __init__(
        self,
        root: str,
        train: bool = True,
        seed: int = 42,
        boost: int = 1,
        resize: Union[list, tuple] = (224, 224),
    ):
        """Dataloader for social navigation task

        root (str): samples.pkl address
        """
        # setting seed value
        torch.random.manual_seed(seed)
        self.resize = resize
        self.train = train
        # read and store directories
        with Path(root).open("rb") as f:
            self.data = pickle.load(f)

        self.batch_read_number = 0

    def __len__(self):
        return len(self.data["past_positions"])

    def __getitem__(self, idx):
        """Return a sample"""
        if self.train:
            transform = transforms.Compose(
                [
                    # Crop(self.crop),
                    transforms.Resize(self.resize, antialias=True),
                    transforms.ToTensor(),
                    transforms.Normalize(
                        mean=[0.485, 0.456, 0.406],  # ImageNet mean hardcoded
                        std=[0.229, 0.224, 0.225],
                    ),  # ImageNet std hardcoded
                ]
            )
        else:
            transform = transforms.Compose(
                [
                    # Crop(self.crop),
                    transforms.Resize(self.resize, antialias=True),
                    transforms.ToTensor(),
                    transforms.Normalize(
                        mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225]
                    ),
                ]
            )
        # Read image data and add to the list
        past_frames = []
        for img_address in self.data["past_frames"][idx]:
            # read all images and append them to a list
            img = imread(img_address.as_posix())
            # print(f"{img.shape = }")
            img = transform(img)
            # img = img.refine_names(..., 'channels', 'height', 'width')
            past_frames.append(img)

        future_frames = []
        for img_address in self.data["future_frames"][idx]:
            # read all images and append them to a list
            img = imread(img_address)
            img = transform(img)
            # img = img.refine_names(..., 'channels', 'height', 'width')
            future_frames.append(img)

        sample = {
            "past_positions": torch.Tensor(
                np.array(self.data["past_positions"][idx])
            ).float(),
            "future_positions": torch.Tensor(
                np.array(self.data["future_positions"][idx])
            ).float(),
            "past_yaw": torch.Tensor(np.array(self.data["past_yaw"][idx]))
            .float()
            .view(-1),
            "future_yaw": torch.Tensor(np.array(self.data["future_yaw"][idx]))
            .float()
            .view(-1),
            "past_vw": torch.Tensor(np.array(self.data["past_vw"][idx]))
            .float()
            .view(-1),
            "future_vw": torch.Tensor(np.array(self.data["future_vw"][idx]))
            .float(),
            "past_frames": past_frames,
            "future_frames": future_frames,
        }
        current = sample["past_positions"][-1]  # current position
        rot = torch.Tensor(
            [
                [np.cos(sample["past_yaw"][-1]), -np.sin(sample["past_yaw"][-1])],
                [np.sin(sample["past_yaw"][-1]), np.cos(sample["past_yaw"][-1])],
            ]
        ).float()
        # sample["past_positions"] = torch.mm(
        #     (sample["past_positions"] - current.unsqueeze(0)), torch.linalg.inv(rot)
        # )  # these will be behind the ego
        sample["future_positions"] = torch.mm(
            (sample["future_positions"] - current.unsqueeze(0)), rot
        )
        # how many steps to each the goal?
        dt = np.random.randint(
            low=len(sample["future_positions"]) // 2,
            high=len(sample["future_positions"]),
        )
        goal = sample["future_positions"][dt]
        goal = cartesian_to_polar(goal[0], goal[1])
        sample["goal_direction"] = goal
        sample["dt"] = torch.Tensor(
            [
                dt / len(sample["future_positions"]),
            ]
        )
        return sample


if __name__ == "__main__":
    # data = SocialNavDataset("social_nav/data/processed/samples.pkl")
    # sample = data[9]
    # print(f"{sample['past_positions'] = }")
    # print(f"{sample['future_positions'] = }")
    # print(f"{sample['past_yaw'] = }")
    # print(f"{sample['future_yaw'] = }")
    # print(f"{sample['past_vw'] = }")
    # print(f"{sample['future_vw'] = }")
    # print(f"{len(sample['past_frames']) = }")
    # print(f"{len(sample['future_frames']) = }")
    # # plt.imshow(img.squeeze(), cmap='gray')
    # plt.imshow(sample["past_frames"][0].permute(1, 2, 0))
    # plt.show()
    pass
