#!/bin/bash
apt-get install curl
\curl -sSL https://get.rvm.io | bash
source /home/vagrant/.rvm/scripts/rvm
which rvm
rvm list known
rvm install 2.4.2
It’ll take awhile to compile.
rvm use 2.4.2 --default
which ruby
ruby -v
