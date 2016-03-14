#!/bin/bash
	wget http://download.aptana.com/studio3/standalone/3.6.1/linux/Aptana_Studio_3_Setup_Linux_x86_64_3.6.1.zip -O AptanaStudio.zip
else
	wget http://download.aptana.com/studio3/standalone/3.6.1/linux/Aptana_Studio_6_Setup_Linux_x86_3.6.1.zip -O AptanaStudio.zip
	
cd /opt
echo "Extracting Aptana Studio 3 to /opt"
unzip -q AptanaStudio.zip -d /opt/
echo "Adding Aptana Studio 3 desktop entry"
# Fix for large icon problem
cp /opt/Aptana_Studio_3/icon.xpm /usr/local/share/icons/aptanastudio3.xpm
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Encoding=UTF-8
Name=Aptana Studio 3
GenericName=Integrated Development Environment
Comment=Aptana Strudio 3 Integrated Development Environment
Exec=/opt/Aptana_Studio_3/AptanaStudio3 %F
TryExec=/opt/Aptana_Studio_3/AptanaStudio3
Icon=aptanastudio3
StartupNotify=true
StartupWMClass=\"Aptana Studio 3\"
Terminal=false
Type=Application
MimeType=text/xml;application/xhtml+xml;application/x-javascript;application/x-php;application/x-java;text/x-javascript;text/html;text/plain
Categories=GNOME;Development;IDE;" >> /tmp/SC-AptanaStudio.desktop
xdg-desktop-menu install /tmp/SC-AptanaStudio.desktop
echo "Aptana Studio 3 has been installed"
