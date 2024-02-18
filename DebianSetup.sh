#!/bin/bash

#Add your user to the Sudo group
#usermod -aG sudo [username]

#Updates Debian for the first time as a user
sudo apt-get update && apt-get upgrade
sudo apt-get dist-upgrade


#Install Flatpak and its repo (and GNOME plugin as well, this is optional)

sudo apt-get install -y flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#Remove the old Firefox Debian release (download newer Flathub version in Software)
sudo apt-get remove firefox-esr

#Download .deb package for Chrome, then download
sudo apt install ./google-chrome-stable_current_amd64.deb

#Install the NVIDIA driver
sudo apt-get install -y nvidia-driver

#Download Envycontrol if you are using integrated NVIDIA graphics with Intel

#Install htop, a great tool to see all processes at work
sudo apt-get install -y htop

#Install neofetch, a tool that shows basic system specs
sudo apt-get install -y neofetch

#Install python and pip
sudo apt-get -y install python-is-python3

#Remove old LibreOffice, replace with flathub LibreOffice
sudo apt remove libreoffice-common libreoffice-core libreoffice-gnome libreoffice-gtk3 libreoffice-help-common libreoffice-help-en-us libreoffice-style-colibre libreoffice-style-elementary

#Install Docker, containerization tool
sudo apt-get install -y docker

#After installing Steam, install steam-devices for controllers
sudo apt-get install -y steam-devices
