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
