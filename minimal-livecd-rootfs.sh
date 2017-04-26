# /bin/bash
sudo apt install -y livecd-rootfs systemd-container xorriso
#2 Create rootfs
#Copy live-build config files from livecd-rootfs to work directory.
mkdir live-build
cd live-build/
cp -a /usr/share/livecd-rootfs/live-build/auto .
cp -a /usr/share/livecd-rootfs/live-build/ubuntu-core    .
#Create config files and Change LB_DISTRIBUTION from precise to xenial with sed.
PROJECT=ubuntu-core lb config
$ sed -i 's/precise/xenial/g' config/bootstrap
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
#Add user
useradd -m -s /bin/bash micrometre
gpasswd -a micrometre sudo
passwd micrometre
su - micrometre
hash -r && hash
exit
#Create grub.cfg which can use serial console. And add "boot=live" to kernel parameter. This will run scripts/live in initrd.
cat <<EOF | tee /boot/grub/grub.cfg
set timeout=1

serial --speed=115200 --unit=0 --word=8 --parity=no --stop=1
terminal_input console serial
terminal_output console serial

menuentry 'ubuntu-live' {
  linux /boot/vmlinuz-4.4.0-22-generic boot=live console=tty1 console=ttyS0,115200
  initrd /boot/initrd.img-4.4.0-22-generic
}
EOF
poweroff

































    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
