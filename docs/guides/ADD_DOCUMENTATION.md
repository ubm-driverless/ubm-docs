# How to Add Documentation

!!! note

    Please read the guidelines on how to write documentation, refer to [**UEP 11 - Documentation Guidelines**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md).

To contribute new documentation to the website, follow these steps:

1. **Create a Branch**  
    - Clone the [ubm-docs repository](https://github.com/ubm-driverless/ubm-docs) locally.  
    - Create a new branch for your changes.

    ```bash
    git clone "https://github.com/ubm-driverless/ubm-docs.git"
    git checkout -b your-branch-name
    ```

2. **Write the Documentation**  
    - Create a Markdown file (`.md`) for your document and place it in the most appropriate subfolder within the `docs/` directory.  
    - If you need to add a new section (tab) and its corresponding subfolder:  
      1. Create a new folder inside the `docs/` directory. Add your documentation file and include an empty `index.md` file in the same folder.  
      2. Update the `nav:` section in the `mkdocs.yaml` file (located in the root of the repository) to include the new folder and its files.

3. **Submit a Pull Request**  
    - Commit your changes and push the branch to the repository:

    ```bash
    git add .
    git commit -m "Add new documentation for [feature/topic]"
    git push origin your-branch-name
    ```

    - Open a Pull Request (PR) on GitHub, providing a clear description of your changes.

4. **Deployment**  
    - Once the PR is merged into the `main` branch, an automated workflow will trigger to rebuild and update the website.


## Specific Guidelines by Language

Documentation is automatically generated from code. In order to see updates in the website the `ci.yaml` workflow needs to be activated.

### Python

- Write Docstrings in the correct format. Refer to [**UEP 11**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md) for more details.

### C++ Packages

- Write Docstrings in the correct format. Refer to [**UEP 11**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md) for more details.
- Ensure that the package is ROS2-compliant.
- Inside the `package.xml` files add `<buildtool_depend>rosdoc2</buildtool_depend>`.
- Place header files in the `include` directory.
