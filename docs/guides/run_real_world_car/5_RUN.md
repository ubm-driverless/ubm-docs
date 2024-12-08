# Run

## Preparation

- Verify that the correct map and speed profile is loaded

    ```bash
    cat launch/config/launch_config.yaml
    ```

    If not, execute the `update_settings.py` located in the root of the repository providing all necessary parameters.

    ```bash
    $ python update_settings.py -h

    usage: update_settings.py [-h] -m MAP_PATH [-y YAML_PATH] -r RACELINE_FILE -b BOUNDARIES_FILE

    options:
    -h, --help            show this help message and exit
    -m MAP_PATH, --map_path MAP_PATH
                            The path to the map .pgm file, expected to be within the `maps` directory of the repository
    -y YAML_PATH, --map_yaml_path YAML_PATH
                            The path to the map .yaml file, expected to be within the `maps` directory of the repository. If omitted assumed to be MAP_PATH with `.yaml` extension.
    -r RACELINE_FILE, --raceline RACELINE_FILE
                            The name of the raceline .csv file, expected to be within the `raceline/csv/TUM_raceline` directory of the repository
    -b BOUNDARIES_FILE, --boundaries BOUNDARIES_FILE
                            The name the boundaries .csv file, expected to be within the `raceline/csv/TUM_raceline` directory of the repository  
    ```

- Stop bringup, and every other running node.
- From VNC close rviz2

## Race

1. **Run Bringup**

    Follow [bringup guide](2_BRINGUP.md)

2. **Open rviz**

    From the VNC instance, open a terminal and run `rviz2`.

3. **Localize the car**

    To start the localization algorithm open a new ssh instance and run run:

    ```bash
    launch localize_launch_mit.py
    ```

    The map should pop up in rviz.

    Use `2D pose estimate` in rviz to place the car in the correct location.

4. **Launch control node and race!**

    To start the control stack open a new ssh instance and run:

    ```bash
    launch control.py
    ```

    The raceline should pop up in rviz.

    You can now press one of button of the joystick to run a control algorithm.

    | Symbol    | Algorithm            |
    |-----------|----------------------|
    | Cross     | Disparity Extender   |
    | Circle    | Pure Pursuit         |
    | Triangle  | Potential Field      |
    | Square    | Potential Pursuit    |
    | **L1**    | **STOP**             |
