# /bin/bash
#dependecies for building 
apt-get update
apt-get install -y git-core curl zlib1g-dev build-essential checkinstall automake libssl-dev libreadline-dev libyaml-dev cmake wget unzip openssh-server bash-completion 
apt-get install -y libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev libssl-dev libffi-dev 
#Python, interactive object oriented language, for network programming, system administration,
apt-get install -y python3.5 python-dev python3-dev python3-pip
apt-get update
#install nodejs 
# nvm installation script from the project's GitHub page 
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
#Run the script with bash:
bash install_nvm.sh
#installed the  at ~/.nvm.  ~/.profile file to use the file.
source ~/.profile
#log out and log back in again, LTS  v6.11.4. install 
nvm install 6.11.4
#switch to  installed version.
nvm use 6.11.4
#i version currently being used by the shell
node -v
# see what is installed:
nvm ls
#default  versions
nvm alias default 6.11.4
#reference it by the alias :
nvm use default
#delete the installer script
rm install_nvm.sh
#install packages  install it globally add the -g flag:
npm install -g express
npm-install -g learnyounode
npm install -g jason
npm install -g npm-check-updates
#ruby from source LTS using RVM
cd ~/
apt-get update
\curl -sSL https://get.rvm.io | bash
source /home/vagrant/.rvm/scripts/rvm
source ~/.profile

which rvm
rvm list known
rvm install 2.4.2
#It’ll take awhile to compile.
rvm use 2.4.2 --default
which ruby
ruby -v
cd ~/
#gems ruby packages
gem install rails 5.1.4
gem install tmuxinator
gem install bundler
gem install rake
gem install rubygems-update
#install shell packages to setup tthe IDE
apt-get install -y vim tmux zsh 
apt-get update
#Set up Vundle packege manager for vim  
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


