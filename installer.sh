#!/bin/sh
apt-get update && upgrade
apt-get install -y build-essential curl libsqlite3-dev #
apt-get install -y kate classicmenu-indicator nautilus-open-terminal
apt-get install -y libfribidi-bin ubiquity tasksel wget unzip 
apt-get install -y chromium-chromedriver chromium-chromedriver-dbg 
apt-get install -y android-tools-adb android-tools-fastboot
apt-get install -y openjdk-7-jdk  openjdk-7-jre libwebkitgtk-1.0-0 git-core 
apt-get update
#oracle-java
add-apt-repository ppa:webupd8team/java -y
apt-get update
apt-get install -y oracle-java7-installer
#automatically accept the Oracle license:
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
#automatically set up the Java 7 environment variables, you can install the following package:
apt-get install -y oracle-java7-set-default
apt-get update
#nodejs
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
apt-get install -y nodejs
apt-get update
#python
apt-get install -y python python3 python-pip python-software-properties
apt-get update
apt-get install -y python-django
# install ruby-1.91 and dependenceies
apt-get install -y ruby1.9.1 ruby1.9.1-full ruby1.9.1 ruby1.9.1-dev ri1.9.1 
apt-get install -y libopenssl-ruby1.9.1 rubygems1.9.1 irb1.9.1 ri1.9.1 rdoc1.9.1
apt-get install -y libssl-dev zlib1g-dev sqlite3 libsqlite3-dev 
#
#install ruby-2.0
#sudo add-apt-repository ppa:brightbox/ruby-ng-experimental
#sudo apt-get update
#sudo apt-get install -y ruby2.0 ruby2.0-dev ruby2.0-doc
#
#update the ruby-gems component
gem install -y rubygems-update
#installs the gems ruby requires to perform automation 
gem install sikulix
gem install rake 
gem install bundler 
gem install yard 
gem install watir-webdriver 
gem install cucumber 
gem install rspec 
gem install testgen 
gem install gherkin
gem install devkit 
gem install selenium-client 
gem install selenium-webdriver 
gem install google-chrome-client 
gem install chromedriver-helper 
gem install browser debugger 
gem install firewatir websocket 
gem install sqlite3
gem install uglifier
gem install node
gem install turbolinks
gem install web-console
gem install railties
gem install rails
apt-get update
#install chromedriver
wget -N http://chromedriver.storage.googleapis.com/2.10/chromedriver_linux64.zip -P ~/Downloads
unzip ~/Downloads/chromedriver_linux64.zip -d ~/Downloads
Make the file you downloaded executable, and move it to /usr/local/share
chmod +x ~/Downloads/chromedriver
mv -f ~/Downloads/chromedriver /usr/local/share/chromedriver
Also, create symlinks to the chromedriver. Cucumber would look for the drivers in /usr/bin/chromedriver
ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
ln -s /usr/local/share/chromedriver /usr/bin/chromedriver




















#Installing Ubuntu Make
add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y
apt-get update
apt-get install -y ubuntu-make
#android-studio
add-apt-repository ppa:paolorotolo/android-studio -y
apt-get update
apt-get install -y android-studio



