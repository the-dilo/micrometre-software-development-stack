# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # create mgmt node
  config.vm.define :mgmt do |mgmt_config|
      mgmt_config.vm.box = "ubuntu/xenial64"
      mgmt_config.vm.hostname = "mgmt"
      mgmt_config.vm.provider "virtualbox" do |vb|
        vb.memory = "1256"
      end
      mgmt_config.vm.provision :shell, path: "nodejs-ruby_from.source.sh"
            mgmt_config.vm.provision :shell, path: "vim-plugins.sh"

  end
end
