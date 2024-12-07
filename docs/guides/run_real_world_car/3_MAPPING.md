# Mapping

The mapping procedure allows to map the track or more in general an environment.

## Preparation

    - Verify that the bring up is on and running by moving left and right the wheels of the car a couple of times
    - Open rviz2: from the VNC instance, open a terminal and run rviz2.
        - Since we still don't have a map, we won't se anything right away. Thus set fixed frame to `laser` in order to see the lidar scans. 

        > [!note]
        > If you don't see the lidar scans or they are stuck move the wheels of the car with the joystick

## Scan environment

- **Run the mapping algorithm**
    - Open a new ssh instance and run

    ```bash
    launch offline_mapping_closure.py
    ```

    From rviz it should be visible that the mapping has started since it starts to build the map.

- **Explore the environment**
    - Move the car slowly around the whole environment. Avoid doing many turns. Less you stear better the mapping will be.
    - When you feel satisfied with the result, keep the car still and do not stop the mapping algorithm because the map needs still to saved.
- **Save the map**
    - From rviz make sure to have the SLAM toolbox visible. If not open it clicking on "panels > add new panel > SLAM toolbox plugin"
    - Next to the `Save Map` button write the name that you want to give to the map. A suggested name is `YYYYMMDD`
    - Click the `Save Map` button. In the logs of the mapping algorithm you should see that the map is sucessfully saved. You should see 2 new files in the folder where the mapping algorithm was executed. One is a `.pgm` file and one is a `.jaml` file.
    - A good practice is to move these 2 files in a new folder called `YYYYMMDD` inside the `/home/ubm/repo/maps/` directory.

## Edit the generated map

In order to improve the localization capabilities and supply the speed profile algorithm with an easier map, the map needs to be manually edited.

1. The first step is to copy the map files to your pc:

    From a terminal in <u>your pc</u> (not in a ssh istance) run the following command:

    ```bash
    scp -r ubm@192.168.1.2:/home/ubm/repo/maps/YYYYMMDD/ /path/on/your/pc
    ```

<!-- TODO -->
1. Edit the map for localization: `mapname_edited.pgm`
2. Edit the map for raceline: `mapname_raceline.pgm`
    - from the raceline package open a **bash** shell
    - `conda activate raceline`
    - `python raceline.py -h`
        <!-- show example -->

with raceline.py map files are automatically updated on the car.

<!-- ## Sync github repo with the new map
<!-- needs to be connected to the internet -->
```
git checkout philly
git pull
git add .
git commit "upload new map"
git push
``` -->