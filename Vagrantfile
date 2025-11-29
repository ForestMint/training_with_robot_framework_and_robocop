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
    echo "Updating and installing some packages..."

    # Update package lists
    sudo apt-get update -y

    # Install some basic packages
    sudo apt-get install -y curl git vim

    # Create a test file
    echo "Hello, Vagrant!" > /home/vagrant/hello.txt

    # Print a message
    echo "Bash script completed!" 
  SHELL

end