# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Use Ubuntu 22.04 LTS
  config.vm.box = "ubuntu/jammy64"

  # Forward SSH agent (optional)
  config.ssh.forward_agent = true

  # VM settings
  config.vm.provider "virtualbox" do |vb|
    vb.name = "robotVM"
    vb.memory = "2048"
    vb.cpus = 2
  end




  config.vm.provision "shell", inline: <<-SHELL
    echo "This runs during provisioning"
    sudo curl -L "https://raw.githubusercontent.com/ForestMint/training_with_robot_framework_and_robocop/refs/heads/master/example.robot" -o ./my_project/example.robot
  SHELL



end