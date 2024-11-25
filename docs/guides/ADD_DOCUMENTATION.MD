# How to Add Documentation

> [!NOTE]
> Please read the guidelines on how to write documentation, refer to [**UEP 11 - Documentation Guidelines**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md).

To add new documentation to the website all that need to be done is the following:

1. Write the document in a markdown file
2. Place it in one of the appropiate subfolder inside the docs/ (of the ubm-docs main branch)
3. Push the changes

A workflow will automatically start and it will update the website.

## Specific Guidelines by Language

Documentation is automatically generated from code. In order to see updates in the website the `ci.yaml` workflow needs to be activated.

### Python

- Write Docstrings in the correct format. Refer to [**UEP 11**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md)

### C++ Packages

- Write Docstrings in the correct format. Refer to [**UEP 11**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md)
- Ensure that the package is ROS2-compliant
- Inside the `package.xml` files add `<buildtool_depend>rosdoc2</buildtool_depend>`.
- Place header files in the `include` directory.
