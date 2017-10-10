# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get install -y aptitude tasksel wget curl build-essential software-properties-common python-software-properties synaptic
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner" 
apt-get update
apt-get upgrade
apt-get install -y gnome-desktop-environment –no-install-recommends gnome-panel indicator-applet-appmenu
apt-get install -y xorg xterm gdm menu gksu  --no-install-recommends
apt-get install -y gnome-session gnome-panel gnome shell gnome-terminal --no-install-recommends 
apt-get install -y nautilus bleachbit gedit gedit-plugins vim tmux zsh git-core unzip openssh-server 
#Atom hackabl text editor.
add-apt-repository ppa:webupd8team/atom -y
apt-get update
apt-get install -y atom
#system backup and restore application with extra features
add-apt-repository ppa:nemh/systemback -y
apt-get update
apt-get install -y systemback
#install google chrome stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt install -y -f
apt-get update
rm google-chrome-stable_current_amd64.deb
dpkg --configure -a
apt-get update
#Remove “System Program Problem Detected” Messages From Ubuntu
rm /var/crash/*
apt-get update
apt-get autoremove
