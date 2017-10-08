# /bin/bash
cd ~/
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev
apt-get libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev libssl-dev libffi-dev 
#Python, interactive object oriented language, for network programming, system administration,
apt-get install 
apt-get install -y python3.5
apt-get install -y python3-pip python3-dev
apt-get update
#python-pip: alternative Python package installer
apt-get install -y python3-pips
apt-get update
#nodejs from source
cd ~/ 
git clone https://github.com/nodejs/node.git
cd node
git checkout v6.14.4 #Try checking nodejs.org for what the stable version is
./configure && make && make install -j 3
export PATH=$PATH:/opt/node/bin
#npm packages for webdrivers
npm install -g express
npm-install -g learnyoubash
npm-install -g learnyounode
npm install -g jason
npm install -g phantomjs 
npm install -g npm-check-updates
#ruby
cd
wget http://ftp.ruby-lang.org/pub/ruby/2.4/ruby-2.4.2.tar.gz
tar -xzvf ruby-2.4.2.tar.gz
cd ruby-2.4.2/
./configure
make
sudo make install
ruby -v
gem install rails 5.1.4
gem install tmuxinator
gem install bundler
gem install rake
gem install rubygems-update


