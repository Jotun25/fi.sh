#!/bin/sh
# update & upgrade #
sudo apt-get update
sudo apt-get upgrade
# adapta-gtk-theme
sudo add-apt-repository ppa:tista/adapta
# pop-icon-theme
sudo add-apt-repository ppa:system76/pop
# firefox
sudo add-apt-repository ppa:mozillateam/firefox-next
# xorg-edgers
sudo add-apt-repository ppa:xorg-edgers/ppa 
# INSTALL new apps #
sudo apt-get install kodi pithos psensor torbrowser-launcher torchat arc-gtk-theme pop-icon-theme breeze-cursor-theme
#  wget
wget https://s3.amazonaws.com/parsec-build/package/parsec-linux.deb
wget https://installers.privateinternetaccess.com/download/pia-linux-0.9.7-beta-02034.run
wget https://i.redd.it/ytqloiszz6611.jpg
wget http://odinico.com/wp-content/uploads/2017/11/odin_transparent.png
# move
mv ytqloiszz6611.jpg ../Pictures/wallpaper
mv odin_transparent.png ../Pictures/user_img 
# INSTALL deb files from directory #
chmod +x *.run
sudo ./*.run
sudo dpkg -i *.deb
# popcorntime
sudo apt install libcanberra-gtk-module libgconf-2-4
wget https://mirror02.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz
sudo mkdir /opt/popcorntime
sudo tar Jxf Popcorn-Time-* -C /opt/popcorntime
sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time
sudo touch /usr/share/applications/popcorntime.desktop
sudo echo "[Desktop Entry]
Version = 1.0
Type = Application
Terminal = false
Name = Popcorn Time
Exec = /usr/bin/Popcorn-Time
Icon = /opt/popcorntime/popcorn.png
Categories = Application;'" >> /usr/share/applications/popcorntime.desktop
sudo wget -O /opt/popcorntime/popcorn.png https://upload.wikimedia.org/wikipedia/commons/d/df/Pctlogo.png
# clean up
sudo chown -R $USER ~/Pictures/
sudo rm ~/Downloads/pia* ~/Downloads/par* ~/Downloads/Pop*
# retropie
sudo apt-get install -y git dialog unzip xmlstarlet
cd ../..
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
sudo ./retropie_setup.sh

