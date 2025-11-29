# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Use Ubuntu 22.04 LTS
  config.vm.box = "ubuntu/jammy64"

  # Forward SSH agent (optional)
  config.ssh.forward_agent = true

  # VM settings
  config.vm.provider "virtualbox" do |vb|
    #vb.name = "robotVM"
    vb.memory = "2048"
    vb.cpus = 2
  end

  # Provision with a shell script
  config.vm.provision "shell", inline: <<-SHELL
    #!/bin/bash
    echo "Provisioning the VM..."

    # Update package lists
    #sudo apt-get update -y

    # Install some basic packages
    #sudo apt-get install -y curl git vim

    sudo apt update

    sudo apt install python3.10-venv # install venv package

    sudo curl -L "https://raw.githubusercontent.com/ForestMint/training_with_robot_framework_and_robocop/refs/heads/master/example.robot" -o /home/vagrant/example.robot

    sudo curl -L "https://raw.githubusercontent.com/ForestMint/training_with_robot_framework_and_robocop/refs/heads/master/requirements.txt" -o /home/vagrant/requirements.txt


    # Create a test file
    echo "Hello, Vagrant!" > /home/vagrant/hello.txt

    # Print a message
    echo "Bash script completed!" 
  SHELL

end