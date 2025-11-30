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
yes Y | sudo apt install python3.10-venv # install venv package
# choose to restart networkd-dispatcher.service
```
It freezes and it seems that is is required to close the terminal ans open a new one after having run this command


### Step 2 - Make Python virtual environment from requirements.txt

connect to the VM ($ vagrant ssh)

In the VM, run the following (as user vagrant) :

```bash
python3 -m venv robotenv # create a virtual environment called robotenv
```

```bash
source robotenv/bin/activate # activate the virtual environment called "robotenv"
# should not display "(robotenv)" before your user@host in terminal
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

```bash
deactivate
```