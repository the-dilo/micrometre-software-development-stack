cat > firefox.desktop <<EOF
[Desktop Entry]
Name=Firefox
Comment=A browser
GenericName=browser
Exec=/opt/firefox/firefox
Icon=/opt/firefox/browser/icons/mozicon128.png
Type=Application
StartupNotify=true
Categories=GNOME;GTK;Utility;TextEditor;Development;
MimeType=text/plain;
X-Desktop-File-Install-Version=0.22
EOF
chmod +x firefox.desktop
#cp firefox.desktop /usr/share/applications/firefox.desktop 
#cp firefox.desktop ~/Desktop/firefox.desktop