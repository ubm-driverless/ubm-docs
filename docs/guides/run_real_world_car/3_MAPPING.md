# Mapping

The mapping procedure allows to map the track or more in general an environment.

## Preparation

- **Verify that the bring up is on:** Move left and right the wheels of the car a couple of times.

- **Open rviz2**: from the VNC instance, open a terminal and run `rviz2`.
    - Since we still don't have a map, we won't se anything right away. Thus set fixed frame to `laser` in order to see the lidar scans. 

    !!! note

        If you don't see the lidar scans or they are stuck move the wheels of the car with the joystick

## Scan the environment

- **Run the mapping algorithm**

    Open a new ssh instance and run

    ```bash
    launch offline_mapping_closure.py
    ```

    From rviz it should be visible that the mapping has started since it starts to build the map.

- **Explore the environment**
    - Move the car slowly around the whole environment. Avoid doing many turns. Less you steer better the mapping will be.
    - When you feel satisfied with the result, keep the car still and do not stop the mapping algorithm because the map needs still to saved.
- **Save the map**
    - From rviz make sure to have the SLAM toolbox visible. If not open it clicking on "panels > add new panel > SLAM toolbox plugin"
    - Next to the `Save Map` button write the name that you want to give to the map. A suggested name is `YYYYMMDD`
    - Click the `Save Map` button. In the logs of the mapping algorithm you should see that the map is successfully saved. You should see 2 new files in the folder where the mapping algorithm was executed. One is a `.pgm` file and one is a `.yaml` file. Now you can stop the mapping algorithm using `CTRL-C` in the terminal.
    - A good practice is to move these 2 files in a new folder called `YYYYMMDD` inside the `/home/ubm/repo/maps/` directory.

## Edit the generated map

In order to improve the localization capabilities and supply the speed profile algorithm with an easier map, the map needs to be manually edited.

1. **Copy the map files to your pc:**

    From a terminal in **your pc** (not in a ssh instance) run the following command, using the right IP address and the correct path.

    ```bash
    scp -r ubm@<IP-of-the-car>:/home/ubm/repo/maps/YYYYMMDD/ /path/on/your/pc
    ```

2. **Edit the map for localization**

    1. **Modify the `.pgm` File**  
        Use an image editor to open the `.pgm` file. [GIMP](https://www.gimp.org/) is recommended for this procedure.

        **Objective:** Refine the map to ensure the localization algorithm performs accurately by removing all gray pixels.

        - All pixels **must** be either completely black (#000000) or completely white (#FFFFFF).  
        - Avoid making significant changes to the map, as it should closely resemble what the LiDAR scans will detect.

    2. **Export the Edited File**  
        Save the edited map as a `.pgm` file using RAW data formatting. Name the file `mapname_edited.pgm`.

    3. **Modify the `.yaml` File**  
        - Copy the `.yaml` file. 
        - Update the `image` parameter to point to `mapname_edited.pgm`.  
        - Save the modified file as `mapname_edited.yaml`.

    **Reference Video**  
    The video below demonstrates this procedure: 

    <video controls>
    <source src="site:/assets/gimp-tutorial/map_edited.mp4" type="video/mp4">
    </video>

3. **Edit the map for raceline**

    1. **Modify the `mapname_edited.pgm` File**

        **Objective:** Refine the map to ensure the raceline algorithm performs accurately by providing a smooth path.

        - Remove parts of the map where the raceline should not go
        - There **must** be only a feasible path. If there are obstacles remove all of them. If there are 2 paths to make the lap give the algorithm only one option
        - Make all corners as smooth as possible.
        - Sharp corners may be increased a little to avoid crashes.

    2. **Export the Raceline File**
        Save the edited map as a `.pgm` file using RAW data formatting. Name the file `mapname_raceline.pgm`.

    3. **Modify the `.yaml` File**  
        - Copy the `.yaml` file.  
        - Update the `image` parameter to point to `mapname_raceline.pgm`.  
        - Save the modified file as `mapname_raceline.yaml`.

    **Reference Video**  
    The video below demonstrates this procedure: 

    <video controls>
    <source src="site:/assets/gimp-tutorial/map_raceline.mp4" type="video/mp4">
    </video>
