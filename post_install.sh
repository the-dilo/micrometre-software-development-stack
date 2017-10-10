# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get install -y aptitude tasksel wget curl build-essential software-properties-common python-software-properties synaptic gksu
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner" 
apt-get update
apt-get upgrade
#this section under contiual testing
apt-get install xserver-xorg xserver-xorg-core xfonts-base xinit xterm --no-install-recommends
apt-get install -y gnome-shell gnome-core gnome-system-tools gnome-app-install indicator-applet-appmenu gnome-session gnome-panel gnome-terminal --no-install-recommends
apt-get install -y nautilus bleachbit gedit gedit-plugins vim tmux zsh git-core unzip openssh-server network-manager
#firefox form mozila
wget http://ftp.mozilla.org/pub/firefox/releases/53.0/linux-x86_64/en-US/firefox-53.0.tar.bz2
tar xvf firefox*.tar.bz2
mv firefox/ /opt
ln -s /opt/firefox/firefox /usr/bin/firefox
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
