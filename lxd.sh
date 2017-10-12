#/bin/bash
apt-get update
#install lxd 
apt-get install lxd
#add user to the group
usermod -aG lxd  ${USER} # this sor testing 
usermod --append --groups lxd $USER
apt-get update
#configure the storage backend
apt-get install zfsutils-linux
Create the webserver container:
#create a container that runs ubuntu 16.04 
lxc launch ubuntu:x ubuntu_in_lxd
#login to the newly created container
lxc exec ubuntu_in_lxd -- sudo --login --user ubuntu

