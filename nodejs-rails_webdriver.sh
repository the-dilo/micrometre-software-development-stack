# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
# Script to install the NodeSource Node.js
cd ~/
apt-get install build-essential libssl-dev
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
bash install_nvm.sh
apt-get update
source ~/.profile
nvm install 6.0.0
nvm use 6.0.0
node -v
nvm alias default 6.0.0
nvm use default
rm install_nvm.sh
#npm packages for webdrivers
npm install -g express
npm-install -g learnyoubash
npm-install -g learnyounode
npm install -g jason
npm install -g phantomjs 
npm install -g selenium-webdriver 
npm install -g selenium-standalone 
npm install -g chromedriver 
npm install -g selenium-webdriver 
npm install -g geckodriver
npm install -g casperjs 
npm install -g webdriverio #bf4040
npm install -g npm-check-updates
#Python, interactive object oriented language, for network programming, system administration,
apt-get install build-essential libssl-dev libffi-dev 
apt-get install -y python3.5
apt-get install -y python3-pip python3-dev
apt-get update
#python-pip: alternative Python package installer
apt-get install -y python3-pips
apt-get update
#rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
cd ~/
curl -sSL https://get.rvm.io -o rvm.sh
bash rvm.sh
source ~/.rvm/scripts/rvm
rvm install 2.4.0
rvm list
rvm use 2.3.1
gem install rails 5.1.4
gem install tmuxinator
gem install bundler
gem install rake
#update the ruby-gems component
gem install rubygems-update
#installs the gems ruby requires to perform automation


