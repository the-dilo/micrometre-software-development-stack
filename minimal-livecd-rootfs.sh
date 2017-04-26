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
