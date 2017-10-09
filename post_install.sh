# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
<<<<<<< HEAD
apt-get --no-install-recommends indicator-session indicator-applet-complete
apt-get --no-install-recommends ubuntu-desktop
apt-get install -y aptitude tasksel python-software-properties wget curl build-essential git-core unzip cmake
apt-get install openssh-server vim tmux gedit-plugins p7zip-rar p7zip-full unace unrar zip unzip rar bleachbit
=======
apt-get install --no-install-recommends ubuntu-desktop
apt-get install --no-install-recommends indicator-session indicator-applet-complete unity-lens-application
apt-get install -y aptitude tasksel python-software-properties wget curl build-essential git-core unzip openssh-server vim tmux gedit-plugins p7zip-rar p7zip-full unace unrar zip unzip rar bleachbit
>>>>>>> 041ffb90725f909dcd63f17f82c3193326c3f6bb
#Atom hackabl text editor.
add-apt-repository ppa:webupd8team/atom -y
apt-get update
apt-get install -y atom
#system backup and restore application with extra features
add-apt-repository ppa:nemh/systemback -y
apt-get update
apt-get install -y systemback
#firefox
wget http://ftp.mozilla.org/pub/firefox/releases/53.0/linux-x86_64/en-US/firefox-53.0.tar.bz2
tar xvf firefox*.tar.bz2
mv firefox/ /opt
ln -s /opt/firefox/firefox /usr/bin/firefox
echo 
#install google chrome stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt install -f
apt-get update
rm google-chrome-stable_current_amd64.deb
dpkg --configure -a
apt-get update
#Remove “System Program Problem Detected” Messages From Ubuntu
rm /var/crash/*
#this command will prevent the Amazon icon from showing up in the dash:
rm /var/crash/*
apt-get update
apt-get autoremove

