# Training with Robot Framework and Robocop

This project is about training with Robot Framework for [acceptance testing](https://en.wikipedia.org/wiki/Acceptance_testing) and Robocop for linting .robot files

## Prerequisites

### Requirements

### Comfort

have [RobotCode - Robot FrameWork Support](https://open-vsx.org/extension/d-biehl/robotcode) installed is your VSCode :
    - it will color your .robot files to make them easier to read
    - it will add the little Robot Framework logo as file symbol for your .robot files

## Process

### Step 1 - Create and set up the VM

```bash
vagrant up # create and start the VM from Vagrantfile
```

connect to the VM ($ vagrant ssh)

In the VM, run the following (as user vagrant) :

```bash
sudo apt update
```

```bash
sudo NEEDRESTART_MODE=a apt install -y python3.10-venv # install venv package
# 'NEEDRESTART_MODE=a' sets it to 'automatic' so no prompts will be done, it is the cleanest and recommended method
```

### Step 2 - Make Python virtual environment from requirements.txt

connect to the VM ($ vagrant ssh)

In the VM, run the following (as user vagrant) :

```bash
python3 -m venv robotenv # create a virtual environment called robotenv
```

```bash
source robotenv/bin/activate # activate the virtual environment called "robotenv"
# should display "(robotenv)" before your user@host in terminal
```

```bash
pip install -r requirements.txt # install the dependancies listed in requirements.txt in the currently activated virtual environment
```

List the dependancies in the current venv to check that robotframework is actually included
```bash
pip list
```

Run the Robot Framework tests contained in the file called "example.robot"
```bash
robot example.robot
```

Deactivate the virtual environment
```bash
deactivate
# should stop displaying "(robotenv)" before your user@host in terminal
```