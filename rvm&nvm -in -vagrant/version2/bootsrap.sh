#!/usr/bin/env bash

sudo locale-gen en_US.UTF-8
sudo update-locale LANG=en_UK.UTF-8
sudo update-locale LC_ALL=en_UK.UTF-8

sudo apt-get update
sudo apt-get install -y build-essential git curl libxslt1-dev libxml2-dev libssl-dev
# rvm and ruby
su - vagrant -c 'curl -sSL https://get.rvm.io | bash -s stable --ruby'
su - vagrant -c 'rvm rvmrc warning ignore allGemfiles'

# node
su - vagrant -c 'curl https://raw.githubusercontent.com/creationix/nvm/v0.14.0/install.sh | sh'
su - vagrant -c 'nvm install 0.10'
su - vagrant -c 'nvm alias default 0.10'

echo "All done installing!

Next steps: type 'vagrant ssh' to log into the machine."
