# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
#Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#update the package database with the Docker packages from the newly added repo:
apt-get update
#Make sure you are about to install from the Docker repo instead of the default Ubuntu 16.04 repo:
apt-cache policy docker-ce
#install Docker:
sudo apt-get install -y docker-ce
# Check: the daemon started, and the process enabled to start on boot. 
systemctl status docker
#avoid typing sudo whenever you run the docker command, add your username to the docker group:
usermod -aG docker ${USER}
#To apply the new group membership, you can log out of the server and back in, or you can type the following:
#Open source workspace server and cloud IDE
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock \
-v ~/test/:/data eclipse/che start
