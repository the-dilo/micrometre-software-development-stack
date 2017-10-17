#!/usr/bin/env bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
#add extra the repositories    
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
apt-get update
node -v
#install packages  install it globally add the -g flag:
npm install -g express
npm-install -g learnyounode
npm install -g jason
npm install -g npm-check-updates
ruby -v
#gems ruby packages
gem install rails 5.1.4
gem install bundler
gem install rake
gem install rubygems-update
#install shell packages to setup tthe IDE
apt-get install -y vim tmux zsh 
apt-get update
