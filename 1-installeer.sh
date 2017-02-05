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
#OpenSSH is a freely available version of the Secure Shell 
apt-get install -y openssh-server 
apt-get update
apt-get update
#Java and the JVM (Java's virtual machine) are widely used and required for many kinds of software
add-apt-repository ppa:webupd8team/java -y
apt-get update
apt-get install -y oracle-java8-installer
apt-get install -y oracle-java8-set-default
apt-get update
#Sublime Text editor for code and markup.
apt-get install -y sublime-text
apt-get update
#Atom hackabl text editor.
add-apt-repository ppa:webupd8team/atom -y
apt-get update
apt-get install -y atom
apt-get update
apt-get update
#MySQL WorkBench visual tool for database .
apt-get install -y mysql-workbench 
apt-get update
#Android Studio tools for building apps for Android device.
apt-add-repository ppa:paolorotolo/android-studio -y 
apt-get update
apt-get install -y  android-studio
#Android Debug Bridge (adb) manage  emulator instance or Android-powered device.
apt-get install -y android-tools-fastboot android-tools-adb 
#Tool to create and append to squashfs filesystems
apt-get update
apt-get install -y squashfs-tools
#command line interface for production of ISO 9660 filesystem images
apt-get update
apt-get install -y genisoimage 
#SYSLINUX is a collection of boot loaders  
apt-get update
apt-get install -y syslinux
#virtual framebuffer is a display server implementing the X11 display server protocol.
apt-get install -y xvfb
apt-get update
# certificate authorities shipped with Mozilla's browser to allow SSL-based applications to check for the authenticity of SSL connections.
apt-get install -y  ca-certificates apt-transport-https 
#https download transport for APT
apt-get install -y apt-transport-https 
#LXD  is the lightervisor, or lightweight container hypervisor.
apt install lxd
usermod -aG lxd micrometre
#Dockersoftware containerization platform
apt-get purge lxc-docker
apt-cache policy docker-engine
apt-get update
apt-get update
apt-get install curl \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual
#Add Docker’s official GPG key:
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
#Verify that the key ID is 58118E89F3A912897C070ADBF76221572C52609D.
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D
apt-get install software-properties-common
add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"
 
#Update the apt package index.
apt-get update
#Install the latest version of Docker.
apt-get -y install docker-engine 
groupadd docker
usermod -aG docker micrometre
apt-get update
#live CD installer
apt-get install -y ubiquity ubiquity-slideshow-ubuntu
#Third party gedit plugins
apt-get install -y gedit-plugins  
apt-get update
#classicMenu Indicator is a notification area applet (application indicator) for the top panel of Ubuntu's Unity desktop
apt-get update
apt-get install -y classicmenu-indicator

























