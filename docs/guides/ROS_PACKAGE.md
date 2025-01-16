# Guide for creating a ROS2 package

## Prerequisites
- Having already created a ROS2 workspace

## Guide
- Open a terminal and `cd` into the workspace folder
- Source ROS2
- Execute the following command:
```bash
ros2 pkg create --build-type ament_cmake <package_name>
```
With `<package_name>` the actual package name.