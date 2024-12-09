# Linting 

## C++ Linting

To ensure that your C++ code follows our coding conventions and guidelines, run
the `clang-tidy` linting tool by following these instructions:

1. Open a shell in the docker container, refer to the [setup guide](https://ubm-driverless.github.io/ubm-docs/setup/SETUP/) for instructions.
2. Build the ros2 workspace with the following command:
    ```bash
    colcon build --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
    ```
    this will generate the `compile_commands.json` file
3. run
    ```bash
    clang-tidy -p ~/f1tenth_ws/build/compile_commands.json ~/repo/path/to/source
    ```
4. Read the output of the command and make sure that no errors were found.


## Python Linting

To ensure that your Python code follows our coding conventions and guidelines, run
the `ruff` linting tool by following these instructions:

1. Open a shell in the docker container, refer to the [setup guide](https://ubm-driverless.github.io/ubm-docs/setup/SETUP/) for instructions.
2. run
    ```bash
    cd /home/ubm/repo
    ruff check path/to/source
    ```
3. Read the output of the command and make sure that no errors were found.

## Automated formatting

Both `clang-tidy` and `ruff` can format the code so that it follows our rules.

!!! warning

    Not all rules can be enforced automatically and using this functionality is often not enough for the code to be valid.

For `ruff` add the `--fix` flag:
```bash
ruff check --fix /path/to/source
```

For `clang-tidy` add the `--fix` flag:
```bash
clang-tidy -p ~/f1tenth_ws/build/compile_commands.json --fix ~/repo/path/to/source
```