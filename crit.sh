sudo apt update 
sudo apt-get install build-essential libssl-dev
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
bash install_nvm.sh 
source ~/.profile 
cat >> $HOME/.bashrc <<EOF
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh
EOF
nvm -v
