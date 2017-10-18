#!/bin/bash -x

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get -y install git
# install stuff, configure env, etc

su -c "source /home/vagrant/myapp/vagrant/user-config.sh" vagrant