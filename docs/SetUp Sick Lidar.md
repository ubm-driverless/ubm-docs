# SetUp Sick Lidar

## Let's clone the sick Repo

1. ```cd $HOME```
2. ```cd Software```
3. ```git clone https://github.com/SICKAG/libsick_ldmrs.git```
4. ```git clone -b master https://github.com/SICKAG/sick_scan_xd.git```
5. ```source /opt/ros/foxy/setup.bash```
6. ```ln -s /home/ubm/Software/libsick_ldmrs/ /home/ubm/f1tenth_ws/src/```
7. ```ln -s /home/ubm/Software/sick_scan_xd /home/ubm/f1tenth_ws/src/```
```
ubm@ubm-bilbo:~$ ls -l /home/ubm/f1tenth_ws/src/
total 0
lrwxrwxrwx 1 ubm ubm 33 nov 23 14:17 libsick_ldmrs -> /home/ubm/Software/libsick_ldmrs/
lrwxrwxrwx 1 ubm ubm 31 nov 23 14:18 sick_scan_xd -> /home/ubm/Software/sick_scan_xd
```
## Let's Build

1. ```cd ~/f1tenth_ws```
2. ```sudo apt install ros-foxy-diagnostic-updater```
3. ```src```
4. ```colcon build --packages-select libsick_ldmrs --event-handlers console_direct+```
5. ```src```
6. ```colcon build --packages-select sick_scan_xd --cmake-args " -DROS_VERSION=2" --event-handlers console_direct+```
  Take a coffe, it will take some time!
7. 

