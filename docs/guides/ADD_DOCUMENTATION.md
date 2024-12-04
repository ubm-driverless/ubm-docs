# How to Add Documentation

!!! note

    Please read the guidelines on how to write documentation, refer to [**UEP 11 - Documentation Guidelines**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md).

To contribute new documentation to the website, follow these steps:

1. **Create a Branch**  
    - Clone the [ubm-docs repository](https://github.com/ubm-driverless/ubm-docs) locally.  
    - Create a new branch for your changes.

    ``` bash
    git clone "https://github.com/ubm-driverless/ubm-docs.git"
    git checkout -b your-branch-name
    ```

2. **Write the Documentation**
    - Write one or more Markdown files (`.md`) and place them in the most appropriate subfolder within the `docs/` directory.
        - If you need to add a subsection:
            1. Create a new subfolder inside an existing subfolder in the `docs/` directory.
            2. Add your documentation files to this folder and include an empty `index.md` file in the same folder.
        - If you need to add a new section (a new tab):
            1. Create a new folder inside the `docs/` directory.
            2. Add an `index.md` file to the new folder. The content of this file will be displayed when the tab is clicked.
            3. Add your additional documentation files to the new folder.
            4. Update the `nav:` section in the `mkdocs.yaml` file (located in the root of the repository) to include the new folder and its files.

3. **Submit a Pull Request**  
    - Commit your changes and push the branch to the repository:

    ``` bash
    git add .
    git commit -m "Add new documentation for [feature/topic]"
    git push origin your-branch-name
    ```

    - Open a Pull Request (PR) on GitHub, providing a clear description of your changes.

4. **Deployment**  
    - Once the PR is merged into the `main` branch, an automated workflow will trigger to rebuild and update the website.

## Add Documentation from Code

Documentation is automatically generated from code. In order to see updates in the website the `ci.yaml` workflow needs to be activated.

### Requisites for Python

- Write Docstrings in the correct format. Refer to [**UEP 11**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md) for more details.

### Requisites for C++ Packages

- Write Docstrings in the correct format. Refer to [**UEP 11**](https://github.com/ubm-driverless/ubm-ueps/blob/main/uep-0011.md) for more details.
- Ensure that the package is ROS2-compliant.
- Place header files in the `include` directory.
- In the `package.xml` file inside the `<export>` tag make sure to have a link to the rosdoc2.yml confing file.

    ```
    <export>
        <rosdoc2>../rosdoc2.yml</rosdoc2> <!--add this, make sure to use the correct relative path -->
    </export>
    ```
