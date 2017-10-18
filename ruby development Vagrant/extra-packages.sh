#!/usr/bin/env bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
#add extra the repositories    
#dd-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
#add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
apt-get update
node -v
#install shell packages 
apt-get install -y vim tmux zsh 
apt-get update
cd ~/
chsh -s /usr/bin/zsh
cd ~/

