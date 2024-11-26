# How to Add Documentation

!!! note

    Please read the guidelines on how to write documentation, refer to [**UEP 11 - Documentation Guidelines**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md).

To add new documentation to the website, simply follow these steps:

1. Write the document in a markdown file.
2. Place it in the appropriate subfolder inside the docs/ directory (of the ubm-docs main branch).
3. Push the changes.

A workflow will start automatically and update the website.

## Specific Guidelines by Language

Documentation is automatically generated from code. In order to see updates in the website the `ci.yaml` workflow needs to be activated.

### Python

- Write Docstrings in the correct format. Refer to [**UEP 11**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md) for more details.

### C++ Packages

- Write Docstrings in the correct format. Refer to [**UEP 11**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md) for more details.
- Ensure that the package is ROS2-compliant.
- Inside the `package.xml` files add `<buildtool_depend>rosdoc2</buildtool_depend>`.
- Place header files in the `include` directory.
