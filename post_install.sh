# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
#install some base packages
apt-get install -y --force-yes -q \
    aptitude \
    tasksel \
    synaptic \
    gksu \
    git \
    cmake \
    build-essential \
    software-properties-common \ 
    python-software-properties \
#add extra the repositories    
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner" 
apt-get update
apt-get upgrade
#add extra packages
apt-get install --no-install-recommends -y --force-yes -q \
    gdm gnome-core --no-install-recommends
    nautilus \
    gedit \
    gedit-plugins \ 
    vim \
    tmux \
    zsh \
    git-core \ 
    unzip \
    openssh-server \ 
    network-manager \
    ca-certificates \
    git \
    vim-nox \
    python-dev \
    && \
  apt-get clean && \
  rm /var/lib/apt/lists/*_*
    
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
