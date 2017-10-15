#!/bin/bash --login
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
#install some base packages
apt-get install -y aptitude gksu git-core build-essential automake checkinstall software-properties-common python-software-properties python-dev cmake ca-certificates unzip openssh-server bash-completion
#add extra the repositories    
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner" 
apt-get update
apt-get upgrade -y
#testing new GUI replacing unity
#apt-get --no-install-recommends install -y gnome gnome-shell nautilus network-manager  
#firefox form mozila
#wget http://ftp.mozilla.org/pub/firefox/releases/53.0/linux-x86_64/en-US/firefox-53.0.tar.bz2
#tar xvf firefox*.tar.bz2
#rm firefox-53.0.tar.bz2
#mv firefox/ /opt
#ln -s /opt/firefox/firefox /usr/bin/firefox
#install google chrome stable
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#dpkg -i google-chrome-stable_current_amd64.deb
#apt install -y -f
#apt-get update
#rm google-chrome-stable_current_amd64.deb
#dpkg --configure -a
#apt-get update
#Remove “System Program Problem Detected” Messages From Ubuntu
#rm /var/crash/*
#apt-get update
#apt-get autoremove
#dependecies for building 
apt-get update
apt-get install -y git-core curl zlib1g-dev build-essential checkinstall automake libssl-dev libreadline-dev libyaml-dev cmake
apt-get install -y libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev libssl-dev libffi-dev 
#Python, interactive object oriented language, for network programming, system administration,
apt-get install -y python3.5 python-dev python3-dev python3-pip 
apt-get update
cd ~/
#nodejs from version manager work around to compliling from source
# nvm installation script from the project's GitHub page 
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash
#source ~bashrc this makes all the diffrence  ~/.profile file to use the file.
source ~/.nvm source nvm.sh
source ~/.nvm source bash_completion
#source ~bashrc this makes all the diffrence  ~/.profile file to use the file.
source ~/.profile
source ~/.bashrc
#install the current LTS
nvm install 6.11.4
#choose the default version                      
nvm use 6.11.4
#check installed node version
node -v
# see what is installed:
nvm ls
