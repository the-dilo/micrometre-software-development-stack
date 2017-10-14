#!/bin/bash
#Set up Vundle:
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
"tern_for_vim"
 Plugin 'marijnh/tern_for_vim'
"git wraper"
  Plugin 'tpope/vim-fugitive'
"surround parent"
  Plugin 'tpope/vim-surround'
"completion"
  Plugin 'valloric/youcompleteme'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
"open NERDTree with Ctrl+n"
map <C-n> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
" Now we can turn our filetype functionality back on
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required  include
EOF
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.py --tern-completer
#This is a Vim plugin that provides Tern-based JavaScript editing support.
cat > $HOME/.tern-project <<EOF
.tern-project
{
    "libs" : ["ecma6", "browser"],
    "plugins": {
        "node" : {},
        "es_modules" : {}
    },
    "ecmaVersion": 6
}
EOF
vim -c 'PluginInstall' -c 'qa!'
