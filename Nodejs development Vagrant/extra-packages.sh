#!/usr/bin/env bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
#add extra the repositories    
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
apt-get update
node -v
#install shell packages to setup tthe IDE
apt-get install -y vim tmux zsh 
apt-get update
