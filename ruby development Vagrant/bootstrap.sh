#!/usr/bin/env bash
#dependecies for building 
apt-get update
apt-get install -y git-core curl zlib1g-dev build-essential checkinstall automake libssl-dev libreadline-dev libyaml-dev cmake wget unzip openssh-server bash-completion 
apt-get install -y libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev libssl-dev libffi-dev 
#Python, interactive object oriented language, for network programming, system administration,
apt-get install -y python3.5 python-dev python3-dev python3-pip
apt-get update
#install nodejs 
cd ~
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get update
apt-get install -y nodejs
node -v
#install packages  install it globally add the -g flag:
npm install -g express
npm install -g jason
npm install -g npm-check-updates
#install shell packages to setup tthe IDE
apt-get update
###############################################################################
# Get rid of annoyances and extraneous error messages
###############################################################################

echo "remove \"stdin is not a tty\" error message"
sed -i 's/^mesg n$//g' /root/.profile

echo "set locale to en_US"
# http://serverfault.com/questions/500764/dpkg-reconfigure-unable-to-re-open-stdin-no-file-or-directory
# Set the LC_CTYPE so that auto-completion works and such.

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF_8 en_US.UTF-8
dpkg-reconfigure locales
update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
#echo -e "LC_ALL=\"en_US.UTF-8\"\nLANG=\"en_US.UTF-8\"" > /etc/default/locale
