# Training with Robot Framework and Robocop

This project is about training with Robot Framework for [acceptance testing](https://en.wikipedia.org/wiki/Acceptance_testing) and Robocop for linting .robot files

## Process

### Step 1 - Create and set up the VM

```bash
vagrant up
```

connect to the VM (user : vagrant, password : vagrant)


In the VM, run the following (as user vagrant) :
```bash
python3 --version # check the version of Python, it should be 3.10.12

sudo apt update

sudo apt install python3.10-venv # install venv package

sudo curl -L "https://raw.githubusercontent.com/ForestMint/training_with_robot_framework_and_robocop/refs/heads/master/example.robot" -o example.robot

```




### Step 2 - Make Python virtual environment from requirements.txt

```bash
python3 -m venv robotenv
```

```bash
source robotenv/bin/activate
```

```bash
touch requirements.txt
```

Edit requirements.txt add the content of the file in this repository

```bash
pip install -r requirements.txt
```

List the dependancies in the current venv to check that robotframework is actually included
```bash
pip list
```

```bash
deactivate
```