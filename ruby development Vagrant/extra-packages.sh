#!/usr/bin/env bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
#add extra the repositories    
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
apt-get update
node -v
#install shell packages 
apt-get install -y vim tmux zsh 
apt-get update
#setp vim with plugins manager with plugins
cd ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc /home/vagrant/.vimrc
chown -R vagrant:vagrant /home/vagrant/.vimrc
vim -c 'PluginInstall' -c 'qa!'
chsh -s $(which zsh) 
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh


