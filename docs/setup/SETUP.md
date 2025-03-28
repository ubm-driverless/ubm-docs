# Setup of the "ubm-f1tenth" environment
##  Linux/Mac
Install Foxglove studio [here](https://foxglove.dev/download) and create an
account.

To remove the corrupted configs and restore the docker CLI config to default
Run the following command:
```bash
sudo rm ~/.docker/config.json
```
Now clone the repository and enter its folder.
To obtain the docker image you can pull it from our dockerhub account, first
login with:
```bash
docker login -u ubmdriverless -p <redacted>
```
then to pull:
```bash
docker pull ubmdriverless/f1tenth:latest
```
Alternatively you can build the image yourself with:
```bash
docker build -t f1tenth-ubm-sim -f Dockerfile .
```
This will take a long time, around 10-30 minutes. You only have to do it once! Now start the docker container.
```bash
docker compose up
```
And in as many other terminals as you want to access the simulation run: 
```bash
docker exec -it ubm-f1tenth-sim-1 /bin/bash
```
In one of these terminals bring up the simulation:
```bash
launch sim.py
```
This command will launch the simulator and open a websocket at `ws://localhost:9090`

Now that the simulator is up, you can see it by connecting to
the websocket at `localhost:9090`.
Open Foxglove studio, log in and select `Open connection...` on
the left panel. Then select `Rosbridge` in the popup window and
make sure that the address is `ws://localhost:9090`, then click
`Open`.

The main window is the `3D Panel`, here you will see a 3D
rendering of the data being published by ROS.
To view the car click on the 3D panel, then on `Panel` in
the left side-bar, here you can select which topics to view,
make sure that `Display frame` is set to `map`, then scroll
down to `Custom layers` and click on the three dots to add
a `URDF` (this will be the 3D model of the car), in the
URDF settings select `Topic` as source and `/ego_robot_description`
in the `Topic` value.

If you are seeing a bunch text and arrows on top of the car, those
are the car's transforms, you can hide them in the `Transforms`
section.

Setting the `Color by` value of the `/scan` topic to `range`
is advised.

For more info on how Foxglove works refer to the [official documentation](https://docs.foxglove.dev/docs).

You will see the car and the track!  
In another one of the Visual Studio Code terminals start up the control stack:
```bash
launch control.py
```
In another one of these terminals send virtual telecommand signals:
```bash
press_circle
```
This starts the pure pursuit algorithm and the car will move. The telecommand to stop the car is:
```bash
press_L1
```
To shut it down, go to the first terminal, the one you started the container with "docker compose up" and press ^C.
Next time you wish to code, open VSCode in the correct directory, start docker and connect with Tiger VNC.


## Windows
For compatibility, it runs within WSL. This is a linux virtual machine provided by Microsoft that runs with near bare metal performance.
Open a powershell prompt and install WSL:
```bash
wsl --install
```
To make sure wsl uses Ubuntu as the default distribution:
```bash
wsl -s Ubuntu
```
Now open wsl by typing:
```bash
wsl
```
By default, you are put in a mount on your C: drive. For read/write performance, we will create a folder in your linux home.
```bash
cd ~
mkdir  F1Tenth
cd F1Tenth
```
Now we set up github to clone the repository in this directory using SSH keys, since passwords are deprecated.
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
Press enter to accept the default file location.
Set a password.  
Copy your SSH key:
```bash
cat ~/.ssh/id_ed25519.pub
```
Go to https://github.com/settings/ssh/new and name your key, then paste it and click "Add SSH key".
Now you can clone the repo:
```bash
git@github.com:ubm-driverless/ubm-f1tenth.git
```
Install Foxglove [here](https://foxglove.dev/download) and create an account.

Do not close the powershell but go back to your Windows desktop, we have Docker Desktop and Visual Studio Code to install:
https://docs.docker.com/desktop/install/windows-install/   
https://code.visualstudio.com/download  
Open Docker Desktop, go to general settings and ensure that "Use the WSL 2 based engine" is checked. Go back to your powershell.
Navigate inside the repo and open it in Visual Studio code.
```bash
cd ubm-f1tenth/
code .
```
This is your development enviroment. Cool! Now to install ROS2 in a docker container, use a new terminal within Visual Studio Code. This ensures it is the correct directory and also in WSL. It's perfectly fine to run this in a new terminal if the vs code one is not working. It might be solved by rebooting.

To obtain the docker image you can pull it from our dockerhub account, first
login with:
```bash
docker login -u ubmdriverless -p <redacted>
```
then to pull:
```bash
docker pull ubmdriverless/f1tenth:latest
```
Alternatively you can build the image yourself with:
```bash
docker build -t f1tenth-ubm-sim -f Dockerfile .
```
This will take a long time, around 10-30 minutes. You only have to do it once! Now start the docker container.

Now start the docker container.
```bash
docker compose up
```
And in as many other terminals as you want to access the simulation: 
```bash
docker exec -it ubm-f1tenth-sim-1 /bin/bash
```
In one of these terminals bring up the simulation:
```bash
launch sim.py
```
This command will launch the simulator and open a websocket at `ws://localhost:9090`

Now that the simulator is up, you can see it by connecting to
the websocket at `localhost:9090`.
Open Foxglove studio, log in and select `Open connection...` on
the left panel. Then select `Rosbridge` in the popup window and
make sure that the address is `ws://localhost:9090`, then click
`Open`.

The main window is the `3D Panel`, here you will see a 3D
rendering of the data being published by ROS.
To view the car click on the 3D panel, then on `Panel` in
the left side-bar, here you can select which topics to view,
make sure that `Display frame` is set to `map`, then scroll
down to `Custom layers` and click on the three dots to add
a `URDF` (this will be the 3D model of the car), in the
URDF settings select `Topic` as source and `/ego_robot_description`
in the `Topic` value.

If you are seeing a bunch text and arrows on top of the car, those
are the car's transforms, you can hide them in the `Transforms`
section.

Setting the `Color by` value of the `/scan` topic to `range`
is advised.

For more info on how Foxglove works refer to the [official documentation](https://docs.foxglove.dev/docs).

You will see the car and the track!  
In another one of the Visual Studio Code terminals start up the control stack:
```bash
launch control.py
```
In another one of these terminals send virtual telecommand signals:
```bash
press_circle
```
This starts the pure pursuit algorithm and the car will move. The telecommand to stop the car is:
```bash
press_L1
```
To shut it down, go to the first terminal, the one you started the container with "docker compose up" and press ^C.
Next time you wish to code, start WSL, open VSCode in the correct directory, start docker and connect with Tiger VNC.
# Useful Information

### When to Use `colcon build`
- **After Cloning a New ROS2 Package or Project:** If you’ve cloned a new ROS2 package or project into your workspace, run `colcon build` to compile it.
- **After Modifying Code or Configuration Files:** If you make changes to source code or configuration files, you need to recompile using `colcon build`.
- **After Modifying CMakeLists.txt or package.xml:** Any changes to these files require recompilation.
- **When Adding New Dependencies:** If you add new dependencies, use `colcon build` to update them.
- **To Perform a Clean Build:** Use `colcon build --cmake-clean-cache` to remove the CMake cache and rebuild from scratch.

### Command:

colcon build

### Useful Options:
- **`--packages-select <package_name>`**: to compile only a specific package.

## Additional Notes

- **Rebuild Docker Environment:** Rebuild the environment only if modifications are made to the `Dockerfile`.
  
- **Change Map:** To change the map used in the simulation, modify the `sim.yaml` file located in the `f1_tenth_gym_ros` directory.

- **Control and Speed Profiles:** 
  - Modify `control.py` only in the `TUM_node`.
  - Create a speed profile (only if it doesn't exist already).
  - Adjust lines 21 and 22 in `raceline.py` if needed.


When changing a map change: control.py, raceline.py, f1_tenth_gym_ros/config/sim_yaml, launch_config.yaml
