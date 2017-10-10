# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get install -y aptitude tasksel wget curl build-essential software-properties-common python-software-properties
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner" 
apt-get update
apt-get upgrade
apt-get install -y lightdm
sudo add-apt-repository ppa:gnome3-team/gnome3-staging
sudo add-apt-repository ppa:gnome3-team/gnome3
sudo apt update
apt install -y gnome gnome-shell
apt-get --no-install-recommends install -y bleachbit gedit gedit-plugins vim tmux zsh git-core unzip openssh-server 
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
cat > firefox.desktop <<EOF
[Desktop Entry]
cat > firefox.desktop <<EOF
[Desktop Entry]
Name=Firefox
Comment=A browser
GenericName=browser
Exec=/opt/firefox/firefox
Icon=/opt/firefox/browser/icons/mozicon128.png
Type=Application
StartupNotify=true
Terminal=false
Categories=Network;WebBrowser;
MimeType=text/plain;
X-Desktop-File-Install-Version=1.00
EOF
chmod +x firefox.desktop
cp firefox.desktop /usr/share/applications/firefox.desktop 
chmod +x firefox.desktop
cp firefox.desktop ~/Desktop/firefox.desktop
chmod +x firefox.desktop
rm firefox.desktop
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

