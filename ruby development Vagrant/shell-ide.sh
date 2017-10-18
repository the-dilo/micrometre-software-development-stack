#!/usr/bin/env bash

# Bash script to automate Vim+Tmux install as written about here:
# http://fideloper.com/mac-vim-tmux

# Test if Git is installed. 
# Installing Git is not the job of this script
git --version 2>&1 >/dev/null
GIT_IS_INSTALLED=$?

if [ $GIT_IS_INSTALLED -gt 0 ]; then
	echo "ERROR: Git is not installed"
	exit 1
fi

# Install or update vim & tmux dependencies
# Requires some sudo action
sudo apt-get update
sudo apt-get install -y vim tmux

# Install Vundle for current user
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle

# Configure .vimrc and vim plugins
cat << EOF | tee -a ~/.vimrc
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Core Bundle
Bundle 'gmarik/vundle'
" Your Bundles Here
Bundle 'altercation/vim-colors-solarized'
" Settings
filetype plugin indent on
set number
syntax enable
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized
EOF

# Install Plugins
vim +BundleInstall +qall

# Configure tmux
cat << EOF | tee -a ~/.tmux.conf
set -g default-terminal "screen-256color"
EOF

echo "SETUP COMPLET