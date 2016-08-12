#Install Useful Apps
apt-get install -y  vim git secure-delete
apt-get install -y flashplugin-installer
apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip rar 
#Purge Unwanted Apps
apt-get purge empathy-common empathy*
apt-get purge transmission-* shotwell* totem*
apt-get purge account-plugin-* friends*
apt-get remove unity-webapps-common
apt-get purge thunderbird*
apt-get purge gnome-orca
apt-get purge gnomine gnome-sudoku gnome-mahjongg

#gsettings set org.gnome.nautilus.preferences always-use-location-entry true
gsettings set org.gnome.nautilus.list-view use-tree-view true
gsettings set org.gnome.nautilus.preferences click-policy "'double'"
gsettings set org.gnome.nautilus.preferences default-folder-viewer "'list-view'"
gsettings set org.gnome.nautilus.preferences enable-delete false
gsettings set org.gnome.nautilus.preferences show-directory-item-counts 'never'
gsettings set org.gnome.nautilus.preferences thumbnail-limit 512000
#Unity Features
gsettings set com.canonical.Unity always-show-menus false

gsettings set com.canonical.Unity.Lenses remote-content-search none
gsettings set com.canonical.Unity.Lenses disabled-scopes "[]"
gsettings set com.canonical.indicator.power show-percentage true
gsettings set com.canonical.indicator.power show-time true
gsettings set org.gnome.desktop.privacy remember-recent-files false


















