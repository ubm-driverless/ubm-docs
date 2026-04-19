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
            2. Please add your documentation files to this folder. Keep in mind that the first file displayed when the folder is opened on the website will be the file that comes first in alphabetical order, unless an `index.md` file is present. It is a good practice to include an `index.md` file that provides an overview of the folder's contents.
        - If you need to add a new section (a new tab):
            1. Create a new folder inside the `docs/` directory.
            2. Add an `index.md` file to the new folder. The content of this file will be displayed when the tab is clicked.
            3. Add your additional documentation files to the new folder.
            4. Update the `nav:` section in the `mkdocs.yaml` file (located in the root of the repository) to include the new folder and its files.

    !!! tip

        The files in the website are sorted in alphabetical order, but the title of the page is given by the markdown title of the markdown file  

3. **Verify that the website works as expected with your added pages**

    1. Create and setup the python virtual environment.

        ```bash
        python -m venv venv
        ```

    2. Enable the virtual environment

        ```bash
        source ./venv/bin/activate
        ```

        Windows PowerShell:

        ```powershell
        .\venv\Scripts\Activate.ps1
        ```

        Windows cmd:

        ```bat
        venv\Scripts\activate.bat
        ```
    
    4. Install the requirements.

        ```bash
        pip install -r requirements.txt
        ```

    3. Run the local helper script to prepare generated docs content and start the preview

        ```bash
        python scripts/local_docs.py serve
        ```

    4. (Optional) Generate a static build locally

        ```bash
        python scripts/local_docs.py build
        ```

    5. (Optional) Generate C++ rosdoc2 output locally and include it in the static site

        ```bash
        python scripts/local_docs.py build-cpp
        ```

        Note: this command requires Docker Desktop (or another running Docker daemon).

    6. (Optional) Serve the built static site including rosdoc2 output (recommended to test C++ links)

        ```bash
        python scripts/local_docs.py serve-cpp
        ```

!!! tip

    Serve locally the website while editing the markdown files. You can see the website update each time you save the file. Very useful to verify that it looks as you intend!

!!! note

    While serving the website on your local machine it is normal that Python Packages and C++ Packages pages are not shown correctly

1. **Submit a Pull Request**
    - Commit your changes and push the branch to the repository:

    ``` bash
    git add .
    git commit -m "Add new documentation for [feature/topic]"
    git push origin your-branch-name
    ```

    - Open a Pull Request (PR) on GitHub, providing a clear description of your changes.

2. **Deployment**  
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

    ```xml
    <export>
        <rosdoc2>../rosdoc2.yml</rosdoc2> <!--add this, make sure to use the correct relative path -->
    </export>
    ```
