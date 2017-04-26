# /bin/bash
#ChRoot Environment
sudo apt-get install -y debootstrap
# alternatively, download the package and run sudo dpkg -i debootstrap_$VERSION.deb
mkdir -p work/chroot
cd
cd work
sudo debootstrap --arch=amd64 xenial chroot 
#It is important to install custom applications such as MySQL after linux-generic is installed
#If you are planning on installing anything using the package desktop-base (xfce4 for instance), 
#you will also need to bind your /dev to the chroot as well (not just devpts). Otherwise, grube-probe will error 
#out and you won't be able to finish the installations. Replace /path/to/chroot/dev with your respective chroot.
sudo mount --bind /dev chroot/dev
#copy the system files so you can get some internet in the chroot.
sudo cp /etc/hosts chroot/etc/hosts
sudo cp /etc/resolv.conf chroot/etc/resolv.conf
sudo cp /etc/apt/sources.list chroot/etc/apt/sources.list
#Enter the Chroot
cd
cd work
sudo chroot chroot
mount none -t proc /proc
mount none -t sysfs /sys
mount none -t devpts /dev/pts
export HOME=/root
export LC_ALL=C
apt-get update
apt-get install --yes dbus
dbus-uuidgen > /var/lib/dbus/machine-id
#Upgrade packages if you want: 
apt-get --yes upgrade
#Install packages needed for Live System: 
apt-get install -y ubuntu-standard casper lupin-casper
apt-get install -y discover laptop-detect os-prober
apt-get install --yes grub2 plymouth-x11
apt install -y linux-image-$(uname -r)
apt-get install -y lightdm
apt-get install -y unity
apt-get install -y ubiquity-frontend-gtk ubiquity-slideshow-ubuntu
apt-get install --no-install-recommends network-manager
apt-get install --no-install-recommends ubuntu-desktop
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
#scalable, distributed revision control system
apt-get install -y git-core
apt-get update
apt-get install -y network-manager openssh-server openssh-client \
byobu  less lvm2 e2fsprogs net-tools
#OpenSSH is a freely available version of the Secure Shell 
apt-get install -y openssh-server 
apt-get update
apt-get update
#Sublime Text editor for code and markup.
add-apt-repository ppa:webupd8team/sublime-text-3 -y
apt-get install -y sublime-text
apt-get update
#Atom hackabl text editor.
add-apt-repository ppa:webupd8team/atom -y
apt-get update
apt-get install -y atom
apt-get update
apt-get update
#Android Debug Bridge (adb) manage  emulator instance or Android-powered device.
apt-get install -y android-tools-fastboot android-tools-adb 
#Tool to create and append to squashfs filesystems
apt-get update
#LXD  is the lightervisor, or lightweight container hypervisor.
apt install -y lxd
#live CD installer
apt-get install -y  ubiquity-slideshow-ubuntu
#Third party gedit plugins
apt-get install -y gedit-plugins  
apt-get update
#classicMenu Indicator is a notification area applet (application indicator) for the top panel of Ubuntu's Unity desktop
apt-get update
apt-get install -y classicmenu-indicator
#install google chrome stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt install -f
apt-get update
rm google-chrome-stable_current_amd64.deb
dpkg --configure -a
apt-get update
#this command will prevent the Amazon icon from showing up in the dash:
rm -rf /usr/share/applications/ubuntu-amazon-default.desktop
#prevent it from showing up in the dash:
cp /usr/share/applications/ubuntu-amazon-default.desktop ~/.local/share/applications/ubuntu-amazon-default.desktop
echo Hidden=true >> ~/.local/share/applications/ubuntu-amazon-default.desktop
apt-get update
apt-get autoremove


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
