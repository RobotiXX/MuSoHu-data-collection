"""General utility functions"""

from omegaconf import OmegaConf


def get_conf(name: str):
    """Returns yaml config file in DictConfig format

    Args:
        name: (str) name of the yaml file
    """
    name = name if name.split(".")[-1] == "yaml" else f"{name}.yaml"
    return OmegaConf.load(name)
