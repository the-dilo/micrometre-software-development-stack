#!/bin/bash
bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
source ~/.bash_profile
rvm install 2.4.2
rvm use 2.4.2 --default
rvm use 2.4.2@global
echo "install: --no-rdoc --no-ri" >> ~/.gemrc
echo "update: --no-rdoc --no-ri" >> ~/.gemrc
gem install bundler
gem install rake