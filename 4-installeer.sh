# /bin/bash
#Update synchronizes list of available packages with the servers in source repositories.
apt-get update
apt-get install -y unity-tweak-tool dconf-editor gnome-disk-utility
#classicMenu Indicator is a notification area applet (application indicator) for the top panel of Ubuntu's Unity desktop
apt-get update
apt-get install -y classicmenu-indicator
#Install Papirus Icon Theme on Ubuntu 16.04 LTS
add-apt-repository ppa:varlesh-l/papirus-pack -y
apt-get update 
apt-get install -y papirus-gtk-icon-theme
#Click on the same icon again to minimise the app.
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true
#move launcher to bottom panel
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
apt-get upgrade
apt-get update
apt-get autoremove
