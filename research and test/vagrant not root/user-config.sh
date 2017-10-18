#!/bin/bash -x

echo "export EDITOR=vim" >> $HOME/.bashrc

# RVM
echo "rvm_install_on_use_flag=1" >> $HOME/.rvmrc
echo "rvm_project_rvmrc=1"       >> $HOME/.rvmrc
echo "rvm_trust_rvmrcs_flag=1"   >> $HOME/.rvmrc
curl -L https://get.rvm.io | bash -s stable --autolibs=4
source "$HOME/.rvm/scripts/rvm"
[[ -s "$rvm_path/hooks/after_cd_bundle" ]] && chmod +x $rvm_path/hooks/after_cd_bundle
rvm autolibs enable
rvm requirements
rvm reload

_RUBY_VERSION="ruby-1.9.3"
rvm install $_RUBY_VERSION
rvm gemset create myapp
rvm use $_RUBY_VERSION --default
rvm use $_RUBY_VERSION@myapp

cd ~/myapp

gem update --system && gem update bundler
bundle config --global jobs 3

bundle install

bundle exec rake db:setup
bundle exec rake db:test:prepare