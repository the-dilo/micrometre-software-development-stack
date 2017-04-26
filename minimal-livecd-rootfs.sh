# /bin/bash
sudo apt install -y livecd-rootfs systemd-container xorriso
#2 Create rootfs
#Copy live-build config files from livecd-rootfs to work directory.
mkdir live-build
cd live-build/
cp -a /usr/share/livecd-rootfs/live-build/auto .
cp -a /usr/share/livecd-rootfs/live-build/ubuntu-desktop-next .
#Create config files and Change LB_DISTRIBUTION from precise to xenial with sed.
PROJECT=ubuntu-core lb config
sed -i 's/precise/xenial/g' config/bootstrap
#Create chroot directory which will be extracted rootfs.
mkdir chroot
sudo lb build
sudo du -sh chroot
#Customize rootfs
#Copy souces.list from host machine to rootfs.
sudo cp /etc/apt/sources.list chroot/etc/apt/
#Set hostname and add to /etc/hosts which will be used by sudo.
echo "ubuntu-live" | sudo tee chroot/etc/hostname
echo "127.0.0.1 ubuntu-live" | sudo tee chroot/etc/hosts
#Set root passwd with chroot.
sudo chroot chroot
passwd
exit
#Start container with systemd-nspawn.
sudo systemd-nspawn -b -D chroot
#Install packages for running LiveDVD
#Update package list.
apt update -y
#Installing live-boot package and live-boot-initramfs-tools package, and se
apt install -y live-boot live-boot-initramfs-tools
#Install GRUB2 and linux kernel. This is for using grub-mkconfig and loading kernel.
apt install -y grub2-common
apt install -y linux-image-$(uname -r)
apt install -y network-manager openssh-server openssh-client less lvm2 e2fsprogs net-tools
apt-get install -y unity
apt-get install --no-install-recommends ubuntu-desktop
apt-get install -y ubiquity-frontend-gtk ubiquity-slideshow-ubuntu
apt-get install -y lightdm
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
#Sublime Text editor for code and markup.
add-apt-repository ppa:webupd8team/sublime-text-3 -y
apt-get install -y sublime-text
apt-get update
#Atom hackabl text editor.
add-apt-repository ppa:webupd8team/atom -y
apt-get update
apt-get install -y atom
apt-get update
apt-g# /bin/bash
sudo apt install -y livecd-rootfs systemd-container xorriso
#2 Create rootfs
#Copy live-build config files from livecd-rootfs to work directory.
mkdir live-build
cd live-build/
cp -a /usr/share/livecd-rootfs/live-build/auto .
cp -a /usr/share/livecd-rootfs/live-build/ubuntu-core    .
#Create config files and Change LB_DISTRIBUTION from precise to xenial with sed.
PROJECT=ubuntu-core lb config
sed -i 's/precise/xenial/g' config/bootstrap
#Create chroot directory which will be extracted rootfs.
mkdir chroot
sudo lb build
sudo du -sh chroot
#Customize rootfs
#Copy souces.list from host machine to rootfs.
sudo cp /etc/apt/sources.list chroot/etc/apt/
#Set hostname and add to /etc/hosts which will be used by sudo.
echo "ubuntu-live" | sudo tee chroot/etc/hostname
echo "127.0.0.1 ubuntu-live" | sudo tee chroot/etc/hosts
#Set root passwd with chroot.
sudo chroot chroot
