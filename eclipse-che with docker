# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
#Open source workspace server and cloud IDE
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock \
  -v ~/test/:/data eclipse/che start
