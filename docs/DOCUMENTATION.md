# F1tenth repository

Currently the [ubm-f1tenth](https://github.com/ubm-driverless/ubm-f1tenth) repository is composed of ros2 packages written in C++ or Python, each package must be documented in a different way based on the language it is written in.

## Python packages

To generate the documentation of ros2 packages written in Python we use [mkdocs](https://www.mkdocs.org/) and each package is treated as a different mkdocs project.

To start writing the documentation you must first initialize the directory as a mkdocs project (you only have to do this once per package), to do so run the following commands **within the docker container**:
```bash
source ~/mkdocs/bin/activate
cd ~/f1tenth_ws/package_name
python -m mkdocs new .
```
The `source ~/mkdocs/bin/activate` command will activate the virtual environment where the mkdocs python package is installed.
Next, modify the `mkdocs.yml` file so that the `plugins` section includes the `mkdocstrings` plugin and use the `readthedocs` theme, in the end the `mkdocs.yml` file should look something like this:
```yml
site_name: <package name>

plugins:
- mkdocstrings

theme:
  name: readthedocs

nav:
- index.md
```
Now you can place the documentation in markdown format inside the `docs` folder:
- You can use the usual markdown formatting instructions, such as tables and images (put the images in the `docs/img` folder)
- To generate the documentation automatically from the python docstrings use the `:::` directive (more info [here](https://mkdocstrings.github.io/usage/)) 🚨 **If you do this ALWAYS include the** `show_source: false` **option** 🚨, like so:
```md
## Detector class
::: detector.detector.Detector
    options:
        show_source: false
```
You can structure the documentation as you think is most effective, create as many markdown files as you want and add them to the `nav` section of `mkdocs.yml`.
To see how the documentation will turn out run this command in the docker container then open the `index.html` file in your browser:
```bash
source ~/mkdocs/bin/activate
cd path/to/package && python -m mkdocs build
```

## C++ packages

The documentation of C++ packages is generated with rosdoc2, which in turn uses Doxygen and Sphinx in conjunction with breathe and exhale. In order for these tools to work the file structure of the package must follow the [ros2 guidelines](https://docs.ros.org/en/foxy/The-ROS2-Project/Contributing/Developer-Guide.html#package-layout), the main aspect of these guidelines is that all classes, methods and functions must be defined in `.hpp` files located in the `include` folder and the [Doxygen style documentation comments](https://www.doxygen.nl/manual/docblocks.html) must be written in these files.

You can generate and view the documentation with:
```bash
source ~/rosdoc2/bin/activate
rosdoc2 build --package-path=/path/to/package
```