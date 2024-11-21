# F1tenth repository

Currently the [ubm-f1tenth](https://github.com/ubm-driverless/ubm-f1tenth) repository is composed of ros2 packages written in C++ or Python, each package must be documented in a different way based on the language it is written in.

## Python packages

todo

## C++ packages

The documentation of C++ packages is generated with rosdoc2, which in turn uses Doxygen and Sphinx in conjunction with breathe and exhale. In order for these tools to work the file structure of the package must follow the [ros2 guidelines](https://docs.ros.org/en/foxy/The-ROS2-Project/Contributing/Developer-Guide.html#package-layout), the main aspect of these guidelines is that all classes, methods and functions must be defined in `.hpp` files located in the `include` folder and the [Doxygen style documentation comments](https://www.doxygen.nl/manual/docblocks.html) must be written in these files.

You can generate and view the documentation with:
```bash
source ~/rosdoc2/bin/activate
rosdoc2 build --package-path=/path/to/package
```