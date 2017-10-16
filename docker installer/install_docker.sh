#/bin/bash
apt-get update
#Step 1 — Installing Docker add the GPG key for the official Docker repository to the system:
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
#check  Docker Hub
docker run hello-world
