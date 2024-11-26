# Documentation Generation

## Introduction

This guide explains how documentation generation is configured and works in the `ubm-f1tenth` repository.

## Overview

The repository uses a combination of tools for generating documentation:

- **MkDocs**: For managing the overall documentation website.
- **MkDocstrings**: To parse Python docstrings and generate reference pages.
- **rosdoc2**: To generate C++ package documentation using Doxygen and Sphinx.

The whole process is automatized with the use of GitHub Actions.

### Deployment with GitHub Actions

The CI/CD workflow automates the process of building and deploying documentation to GitHub Pages. The key steps in `.github/workflows/ci.yml` are:

1. **Clone ubm-f1tenth Repository**

2. **Generate C++ Documentation**:
    - Uses rosdoc2 to generate documentation for C++ packages found in the repository.
    - The script searches for package.xml files in the ubm-f1tenth directory and identifies packages that use rosdoc2.
    - For each identified package, it runs rosdoc2 build to generate HTML documentation, which is stored in a specified output directory.
    - A markdown file (CPP_PACKAGES.md) is created listing the packages with links to their generated documentation.

3. **Move Python packages to src**:
    - Copies Python packages found within the repository into the `src/` folder to prepare them for MkDocs documentation generation. This is done by checking for the presence of ament_python in each package.xml file.

4. **Build Documentation**:
    - Runs MkDocs to generate static documentation from the source files.
    - All the configs are set in the `mkdocs.yaml` file.
    - `mkdocs build` clears the content of the `site/` directory, builds the content inside the `docs/` directory and processes with mkdocstrings the source code present in `src/` directory. The output will be in the `site` directory.
    - Custom navigation is generated dynamically based on Python module structure by the `gen_ref_pages.py` present in the script/ folder.

5. **Add Additional Files to Site**:
    - Copies the generated C++ documentation to the `site` directory for deployment.

6. **Deploy with ghp-import**:
    - Deploys the content of `site/` to GitHub Pages using the `ghp-import` tool.

    > [!IMPORTANT]
    > `ghp-import` will DESTROY the gh-pages branch. This script assumes that gh-pages is 100% derivative. You should never edit files in your gh-pages branch by hand because you will lose your work.

> [!IMPORTANT]
> Make sure that informations that are not meant to be public are not included in the ./docs folder or ./site folder
> The workflow will make the content of the ./docs folder and ./site folder public.
