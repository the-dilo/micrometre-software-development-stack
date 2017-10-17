# micrometre software development stack

Scripts used to setup desired development tools within Ubuntu 16.04.  

Why use these scripts?  
Quickly create an environmment for developing applications with various languages.   
  


What's in this Stack?  
IDE's:  
Cloud9  
Eclipse- Che  
  
Dev environments for:  
Ruby  


Requirements:
1. PC/laptop which meets, but preferably exceeds Ubuntu 16.04 minimum specs.

2. Virtual box  
Installation:  
Download and install the latest appropiate version for your Operating system from: https://www.virtualbox.org/wiki/Downloads
Ubuntu Software Centre should handle the installation so it can handle its removal (if needed).  

3. Vagrant:  
Insallation  
Download and install the latest appropiate version for your Operating system from: https://www.vagrantup.com/downloads.html  
We chose to download the Debian version as Ubuntu is based upon it.  
Some Browsers (Google Chrome) may warn you that: "this type of file can harm your computer" after download, just click "keep" and open the file as normal.  
Ubuntu Software Centre should handle the installation so it can handle its removal (if needed).  

Testing the installations on other environments.   
Please execute scripts as root (or with sudo), if you are runnig the script outside Vagrant using Post_install folder. For Vagrant login with
vagrant ssh 

Editors, SDK, and IDE
* Cloud9 SDK   development environment 
* Eclipse-che  Cloud IDE in a docker container with persistent data volume.
* Vim with vundle and extra plugins





Removes packeges not allways used. 
note to add
Adds extra packages.
shutdown applet after installing ubuntu
