### Downloading Datasets
This script works for both MuSoHu and SCAND. Download [MuSoHu](https://dataverse.orc.gmu.edu/dataset.xhtml?persistentId=doi:10.13021/orc2020/HZI4LJ) and [SCAND](https://dataverse.tdl.org/dataset.xhtml?persistentId=doi:10.18738/T8/0PRYRH) and put bag files in separate directories. Change `bags_dir` in config file accordingly.

### Dependencies :
To install dependencies for parser:
```bash
pip install omegaconf bagpy tqdm
```

### Parsing
To run the MuSoHu parser:
```bash
python parser.py --name musohu
```

And to run SCAND parser, change the dataset `--name` to `scand`:
```bash
python parser.py --name scand
```
We only store the front facing camera for the Spot in SCAND, so both MuSoHu and SCAND have the *same* interface. The only difference is that SCAND does not contain depth data.

Additionally, you can pass a custom config file:
```bash
python parser.py -c conf/custom_config --name musohu
```

### Creating Samples
To create samples from parsed bags, run the following command:
```bash
python parser.py -cs
```
The sampler uses the observation length (`obs_len`) and prediction length (`pred_len`) from the config file to create samples. It reads the directory for storing the pickle file from `parsed_dir`.