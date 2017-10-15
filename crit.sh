sudo apt update 
sudo apt-get install build-essential libssl-dev
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
bash install_nvm.sh 
echo 'export PATH=~/.nvm.sh:$PATH' >>~/.bash_profile
source ~/.profile 
EOF
nvm -v
