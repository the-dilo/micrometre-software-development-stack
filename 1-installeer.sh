# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
#some dependencies/prerequisites
#Advanced Packaging Tool (APT) system. installation, removal, and upgrade, non-graphical terminal environment
apt-get install -y aptitude
apt-get update
#tool that installs multiple related packages as a co-ordinated "task"
apt-get update
apt-get install -y tasksel synaptic
#manage the repositories that you install software from This software provides an abstraction of the used apt repositories.
apt-get install -y python-software-properties
apt-get update
#wget: retrieves files from the web
apt-get update
apt-get install -y wget
#command line tool for transferring data with URL syntax
apt-get install -y curl
#build-essential packages which are essential for building Ubuntu packages including gcc compiler, make and other required tools.
apt-get install -y build-essential
apt-get update
#Web content engine library for GTK+, used primarily in Apple's Safari browser. It is made to be embedded in
apt-get install -y libwebkitgtk-1.0-0 libwebkitgtk-1.0-common libwebkitgtk-dev
apt-get update
#scalable, distributed revision control system
apt-get install -y git-core
apt-get update
#Independent JPEG Group's JPEG runtime library (version 6.2)
apt-get install -y libjpeg62
apt-get update
# SQLite is a C library that implements an SQL database engine.
apt-get install -y sqlite3 libsqlite3-dev
apt-get update
# libssl and libcrypto development libraries, header files and manpages.It is part of the OpenSSL implementation of SSL.
apt-get install -y libssl-dev
apt-get update
#Readline is used to read a line after editing. To work with readline in C/C++,
apt-get install -y libreadline-dev
# LibYAML is a C library for parsing and emitting data in YAML 1.1, a
apt-get install -y libyaml-dev
#Development files for the GNOME XML library, XML is a metalanguage to let you design your own markup language.
apt-get install -y libxml2-dev
#Development files and documentation for libcurl OpenSSL These files ie. includes, static library, SSL support is provided by OpenSSL.
apt-get install -y libcurl4-openssl-dev
#SSL development libraries, header files and documentation libssl and libcrypto development libraries, header files and manpages.
apt-get install -y libssl-dev
#XSLT is an XML language for defining transformations of XML files from XML to some other arbitrary format, such as XML, HTML, plain text, etc.
apt-get install -y libxslt1-dev
#Foreign Function Interface library This package contains the headers and static library files necessary for building programs which use libffi.
apt-get install -y libffi-dev
apt-get update
#Free Implementation of the Unicode BiDi algorithm (utility)FriBiDi is a BiDi algorithm implementation for Hebrew and/or Arabiclanguages.
apt-get install -y libfribidi-bin
# used for archived files
apt-get update
apt-get install -y unzip
#open ssh
apt-get install -y openssh-server 
apt-get update
#android debug
apt-get install -y android-tools-fastboot android-tools-adb squashfs-tools genisoimage syslinux
apt-get install -y  firefox xvfb
apt-get update
apt-get install -y  apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" |   tee /etc/apt/sources.list.d/docker.list
apt-get update
apt-get purge lxc-docker
apt-cache policy docker-engine
apt-get update
apt-get install -y docker-engine
groupadd docker
usermod -aG docker micrometre
apt-get update
apt-get install -y ubiquity
apt-add-repository ppa:paolorotolo/android-studio -y 
apt-get update
apt-get install -y  android-studio
#extras
apt-get install -y gedit-plugins  mysql-workbench 
apt-get update

apt-get update
apt-get install -y ubiquity
#sublime editor
add-apt-repository ppa:webupd8team/sublime-text-3 -y
apt-get update
apt-get install -y sublime-text
apt-get update
#atom editor
add-apt-repository ppa:webupd8team/atom -y
apt-get update
apt-get install -y atom
apt-get install -y gedit-plugins   
apt-get update
apt-get update
apt-get install -y unity-tweak-tool dconf-editor gnome-disk-utility
#classicMenu Indicator is a notification area applet (application indicator) for the top panel of Ubuntu's Unity desktop
apt-get update
apt-get install -y classicmenu-indicator
#Install Papirus Icon Theme on Ubuntu 16.04 LTS

























