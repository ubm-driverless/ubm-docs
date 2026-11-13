# Raceline virtual environment

To run the scripts to create the raceline you will need to create a python virtual environment.

You will need a working python installation >= 3.8 and it's respective `venv` package.

1. Navigate to the `raceline` directory of the `ubm-f1tenth` repo
2. run `python3 -m venv <path-to-venv>`, the path to the virtual environment can be any path, if you don't know where to put it use `raceline/.venv`. **Make sure to remember this path**.
3. Activate the environment:
    - In bash: `source <path-to-venv>/bin/activate`
    - In powershell: `<path-to-venv>/Scripts/Activate.ps1`
4. Install the required packages: `pip install -r requirements.txt`

Now you can run the raceline scripts, but you **need to activate the environment again every time you restart your shell** to do so.