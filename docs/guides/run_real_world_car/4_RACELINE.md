# Raceline & Speed Profile

## Preparation

- On you PC, checkout to the default branch of the `ubm-f1tenth` repository.
- you should have ready all the following files. If not check [Mapping Guide](./3_MAPPING.md)
    - `mapname_edited.pgm`,
    - `mapname_edited.yaml`,
    - `mapname_raceline.pgm`,
    - `mapname_raceline.yaml`

- Create a folder within the `maps` folder called `mapname` and place all the above files.

## Run the raceline algorithm

- cd to `raceline` folder
- Enable the conda environment (make sure to use a bash shell)

    ```bash
    conda activate raceline
    ```

- Execute the raceline algorithm providing all the necessary parameters.

Usage of the command:
```bash
usage: raceline.py [-h] -r RACELINE_MAP_PATH [-m LOC_MAP_PATH] [-c CAR_IP]
                   [--disable_plots] [--invert_direction] [-d DOWNSAMPLE]

optional arguments:
  -h, --help            show this help message and exit
  -r RACELINE_MAP_PATH, --raceline_map RACELINE_MAP_PATH
                        The path to the map .pgm file that will be used to
                        calculate the raceline, expected to be within the
                        `maps` directory of the repository
  -m LOC_MAP_PATH, --map_path LOC_MAP_PATH
                        The path to the map .pgm file that will be used for
                        localization and gui, expected to be within the `maps`
                        directory of the repository.Use this option when the
                        localization map is different from the raceline one.
  -c CAR_IP, --car_ip CAR_IP
                        The ip of the car on which the new files will be
                        uploaded and relative settings will be changed
  --disable_plots       Disables TUM plots
  --invert_direction    Invert the direction of the track
  -d DOWNSAMPLE, --downsample_factor DOWNSAMPLE
                        The downsample factor to use
```

Follow the terminal instructions. The raceline and speed profile will be computed. 
Then it will ask you to upload the results to the car. 
By accepting, the car will receive the map and the raceline, and it will be ready to run all the algorithms that require maps and localization!
