# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
add-apt-repository ppa:webupd8team/java -y
apt-get update
apt-get install -y oracle-java8-installer
apt-get install -y oracle-java8-set-default
apt-get update
# Script to install the NodeSource Node.js
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get install -y nodejs
apt-get update
#npm packages for webdrivers
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
apt-get install -y python3
apt-get update
#python-pip: alternative Python package installer
apt-get install -y python3-pips
apt-get update
#ruby 2.3
apt-get install -y ruby2.3 ruby2.3-dev 
#update the ruby-gems component
gem2.3 install rubygems-update
#installs the gems ruby requires to perform automation
gem2.3 install sikulix
gem2.3 install rake
gem2.3 install bundler
gem2.3 install yard
gem2.3 install watir-webdriver
gem2.3 install cucumber
gem2.3 install rspec
gem2.3 install testgen
gem2.3 install gherkin
gem2.3 install devkit
gem2.3 install selenium-client
gem2.3 install selenium-webdriver
gem2.3 install google-chrome-client
gem2.3 install chromedriver-helper
gem2.3 install browser debugger
gem2.3 install firewatir websocket
gem2.3 install sqlite3
gem2.3 install uglifier
gem2.3 install turbolinks
gem2.3 install web-console
gem2.3 install railties
gem2.3 install rails
gem2.3 install rubygems-update
update_rubygems
gem2.3 update --system
apt-get update
#offical ubuntu installer (has issue with Docker Containers)
apt-get update
apt-get install -y ubiquity
#sublime editor
add-apt-repository ppa:webupd8team/sublime-text-3 -y
apt-get update
apt-get install -y sublime-text
apt-get update
#atom editor
add-apt-repository ppa:webupd8team/atom -y
apt-get update
apt-get install -y atom
# https://atom.io/packages/script allows one to run scripts within atom!!
#brackets
add-apt-repository ppa:webupd8team/brackets -y
apt-get update
apt-get install -y brackets
#android studio
apt-add-repository ppa:paolorotolo/android-studio -y 
apt-get update
apt-get install -y  android-studio
#extras
apt-get install gedit-plugins  mysql-workbench 
apt-get update
