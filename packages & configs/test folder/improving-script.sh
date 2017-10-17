#!/usr/bin/env bash
#install some base packages
    apt-get update && \
    apt-get install -y \
    aptitude \
    gksu \
    git-core \
    build-essential \
    automake \
    checkinstall \
    software-properties-common \
    python-software-properties \
    python-dev \
    cmake \
    ca-certificates \
    unzip \
    openssh-server \
    bash-completion \
    zlib1g-dev \
    build-essential checkinstall 
    automake \
    libssl-dev \
    libreadline-dev \
    libyaml-dev \
    libsqlite3-dev \
    sqlite3 \
    libxml2-dev \
    libxslt1-dev \
    libcurl4-openssl-dev \
    python-software-properties \
    libffi-dev \
    libssl-dev \
    libffi-dev 
#Python, interactive object oriented language, for network programming, system administration,
    apt-get update && \
    apt-get install -y \
    python3.5 \
    python-dev \
    python3-dev \
    python3-pip 

#add extra the repositories    
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner" 
#testing new GUI replacing unity
    apt-get update && \
    apt-get install -y --no-install-recommends \
    xorg \
    gnome-core \
    gnome-system-tools \
    gnome-app-install \
    nautilus \
    network-manager  
#firefox form mozila
wget http://ftp.mozilla.org/pub/firefox/releases/53.0/linux-x86_64/en-US/firefox-53.0.tar.bz2
tar xvf firefox*.tar.bz2
rm firefox-53.0.tar.bz2
mv firefox/ /opt
ln -s /opt/firefox/firefox /usr/bin/firefox
#install google chrome stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt install -y -f
apt-get update
rm google-chrome-stable_current_amd64.deb
dpkg --configure -a
apt-get update
#Remove “System Program Problem Detected” Messages From Ubuntu
rm /var/crash/*
apt-get update
apt-get autoremove
#Python, interactive object oriented language, for network programming, system administration,
apt-get install -y python3.5 python-dev python3-dev python3-pip 
apt-get update
cd ~
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get update
apt-get install -y nodejs
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
#install shell packages 
apt-get update && \
apt-get install -y \
vim \
tmux \
zsh 
#vim vundle plugin manager
cd ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#Configure Plugins Put this at the top of your .vimrc to use Vundle. 
cat > $HOME/.vimrc <<EOF
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
"let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"file manager"
 Plugin 'scrooloose/nerdtree'
"open NERDTree with Ctrl+n"
map <C-n> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
" Now we can turn our filetype functionality back on
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required  include
EOF
#this will run the vim command to install the plugins
vim -c 'PluginInstall' -c 'qa!'
#make zsh defaul shell
chsh -s $(which zsh) $(whoami)
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
