# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
apt-add-repository ppa:mozillateam/firefox-next -y
apt-get update
apt-get install -y  firefox xvfb
apt-get update
apt-get install -y  apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" |   tee /etc/apt/sources.list.d/docker.list
apt-get update
apt-get purge lxc-docker
apt-cache policy docker-engine
apt-get install -y linux-image-extra-$(uname -r)
apt-get update
apt-get install -y docker-engine
groupadd micrometre
usermod -aG docker ubuntu

