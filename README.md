<div align=center>

<img src="./images/Fortran_logo.png" width=100>

# Learn Fortran

</div>

This is Brian's sandbox for learning Fortran using the VS Code. This should work on both Linux _and_ PC.

## Set up

Clone this repository and open the folder/workspace in VS Code

### Install the VS Code Extensions

Install the recommended VS Code extensions.

### Install the conda environment

Assuming you have Conda installed, the fastest way to install the Conda environment is to run the workspace custom VS Code task

1. Open command pallet
1. Run `Tasks: Run Task`
1. Select `🐍 Conda: Create environment learn_fortran`

When you want to update the environment, run the task `🥇 Conda: Update environment learn_fortran`

### Update Workspace Settings

Open the [workspace settings](.vscode/settings.json) and update the PATH for `gfortran`, `fortls`, and `fprettify`.

You can find the path for your installation with these commands

```bash
# On Linux/MacOS
which gfortran
which fortls
which fprettify

# On Windows
where gfortran
where fortls
where fprettify
```

## Quick Compile

I'm using the **codeRunner** extension to do a quick compile and run of a Fortran program. When you have a source code file in focus, use the shortcut `Ctrl+Alt+N` to compile and run the Fortran program. The output will show in the terminal window.
