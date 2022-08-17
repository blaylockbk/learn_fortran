<div align=center>

<img src="./images/Fortran_logo.png" width=100>

# Learn Fortran

</div>

This is Brian's environment for learning and using Fortran in a VS Code environment on both Linux _and_ PC.

## Set up

### Install the conda environment.

The fastest way is to run the VS Code task

1. Open command pallet
1. Run `Tasks: Run Task`
1. Select `🐍 Conda: Create environment learn_fortran`

When you want to update the environment, run the task `🥇 Conda: Update environment learn_fortran`

### Install the VS Code Extensions

Install the recommended VS Code extensions.

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
