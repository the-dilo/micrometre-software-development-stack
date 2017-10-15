# /bin/bash
#dependecies for building 
apt-get update
apt-get install -y git-core curl zlib1g-dev build-essential checkinstall automake libssl-dev libreadline-dev libyaml-dev cmake wget unzip openssh-server bash-completion 
apt-get install -y libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev libssl-dev libffi-dev 
#Python, interactive object oriented language, for network programming, system administration,
apt-get install -y python3.5 python-dev python3-dev python3-pip
apt-get update
#install nodejs 
cd ~
curl -sL https://deb.nodesource.com/setup_6.11.4 -o nodesource_setup.sh
#And run the script
bash nodesource_setup.sh
apt-get update
apt-get install nodejs
node -v
#install packages  install it globally add the -g flag:
npm install -g express
npm-install -g learnyounode
npm install -g jason
npm install -g npm-check-updates
#ruby from source LTS using
cd
wget http://ftp.ruby-lang.org/pub/ruby/2.4/ruby-2.4.2.tar.gz
tar -xzvf ruby-2.4.2.tar.gz
cd ruby-2.4.2/
./configure
make
sudo make install
ruby -v
#gems ruby packages
gem install rails 5.1.4
gem install bundler
gem install rake
gem install rubygems-update
#install shell packages to setup tthe IDE
apt-get install -y vim tmux zsh 
apt-get update
