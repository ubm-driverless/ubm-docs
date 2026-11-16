# Documentation Generation

## Introduction

This guide explains how documentation generation is configured and works across the repositories listed in `repositories.yaml`.

## Overview

The repository uses a combination of tools for generating documentation:

- **MkDocs**: For managing the overall documentation website.
- **MkDocstrings**: To parse Python docstrings and generate reference pages.
- **rosdoc2**: To generate C++ package documentation using Doxygen and Sphinx.

The whole process is automatized with the use of GitHub Actions.

### Deployment with GitHub Actions

The CI/CD workflow automates the process of building and deploying documentation to GitHub Pages. The key steps in `.github/workflows/ci.yaml` are:

1. **Clone configured repositories**
    - The workflow reads `repositories.yaml` and clones each listed repository into `./repos/`.
    - Add or remove repositories from that file to control which repositories are documented.

2. **Generate repository pages**:
    - `scripts/gen_repository_pages.py` creates a page for each repository listed in `repositories.yaml`.
    - Each repository page contains two subsections: one for Python packages and one for C++ packages.
    - The C++ subsection links to the rosdoc2 output generated for that repository.

3. **Generate C++ Documentation**:
    - Uses rosdoc2 to generate documentation for C++ packages found in the configured repositories.
    - The script searches for package.xml files under `./repos/` and identifies packages that use rosdoc2.
    - For each identified package, it runs rosdoc2 build to generate HTML documentation, which is stored under a repository-specific output directory.

4. **Move Python packages to src**:
    - Copies Python packages found within the configured repositories into the `src/` folder to prepare them for MkDocs documentation generation. This is done by checking for the presence of ament_python in each package.xml file.

5. **Build Documentation**:
    - Runs MkDocs to generate static documentation from the source files.
    - All the configs are set in the `mkdocs.yaml` file.
    - `mkdocs build` clears the content of the `site/` directory, builds the content inside the `docs/` directory and processes with mkdocstrings the source code present in `src/` directory. The output will be in the `site` directory.
    - Custom navigation is generated dynamically based on Python module structure by the `gen_ref_pages.py` present in the script/ folder.

6. **Add Additional Files to Site**:
    - Copies the generated C++ documentation to the `site` directory for deployment.

7. **Deploy with ghp-import**:
    - Deploys the content of `site/` to GitHub Pages using the `ghp-import` tool.

    !!! danger

        `ghp-import` will DESTROY the gh-pages branch. This script assumes that gh-pages is 100% derivative. You should never edit files in your gh-pages branch by hand because you will lose your work.

!!! warning

    Make sure that informations that are not meant to be public are not included in the ./docs folder or ./site folder
    The workflow will make the content of the ./docs folder and ./site folder public.
