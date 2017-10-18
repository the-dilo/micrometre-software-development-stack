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
cd ~/
chsh -s /usr/bin/zsh
cd ~/
git clone https://github.com/VundleVim/Vundle.vim.git /home/vagrant/vim/bundle/Vundle.vim
#Configure Plugins Put this at the top of your .vimrc to use Vundle. 
cat >  /home/vagrant/.vimrc <<EOF
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
"let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"file manager"
 Plugin 'scrooloose/nerdtree'
"tern_for_vim"
"open NERDTree with Ctrl+n"
map <C-n> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
" Now we can turn our filetype functionality back on
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required  include
EOF
vim -c 'PluginInstall' -c 'qa!'
#oh-my-zsh.git insatal
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
chsh -s /usr/bin/zsh vagrant
