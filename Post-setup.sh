#! /bin/bash
# This is a post-install setup script. It installs themes and programs I find useful or necessary.
# Feel free to create new branches if desired.

# Gnome Tweak Tool and a few customizations
dnf install -y gnome-tweak-tool
dnf config-manager --add-repo http://download.opensuse.org/repositories/home:snwh:paper/Fedora_24/home:snwh:paper.repo
dnf install -y paper-gtk-theme
dnf install -y paper-icon-theme

#RPM Fusion Repos
dnf install -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Update the system
dnf update -y
dnf install -y dnf-plugin-system-upgrade

#Virtualisation
dnf install -y @virtualization
dnf install -y libvirt

#Utilities
dnf install -y nano
dnf install -y simple-scan
dnf config-manager --add-repo=http://negativo17.org/repos/fedora-handbrake.repo
dnf install -y HandBrake-gui
dnf install -y HandBrake-cli
dnf install -y MakeMKV
dnf install -y libdvdcss
dnf install -y ffmpeg

dnf install -y eclipse
dnf copr enable decathorpe/syncthing -y
dnf install -y syncthing
dnf install -y syncthing-gtk
dnf install -y syncthing-inotify

#Enable Syncthing
systemctl --user enable syncthing.service
systemctl --user enable syncthing-inotify.service
systemctl --user start syncthing.service
systemctl --user start syncthing-inotify.service


#Games
dnf install -y steam
dnf install -y wine

#Internet
dnf install -y qbittorrent

#Insync
rpm --import https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key
dnf config-manager --add-repo http://yum.insynchq.com/fedora/$releasever/
dnf install -y insync

#Multimedia
dnf install -y vlc

#Get the desired rpms
#wget https://github-cloud.s3.amazonaws.com/releases/40008106/609bffa0-416c-11e6-8299-49d0a807484d.rpm?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20160731%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20160731T214806Z&X-Amz-Expires=300&X-Amz-Signature=47097897337834ae0ebc3f9af948dc792e411a53149557836164f6e87b3ce5c9&X-Amz-SignedHeaders=host&actor_id=5133584&response-content-disposition=attachment%3B%20filename%3Dgoogle-play-music-desktop-player-3.3.0.x86_64.rpm&response-content-type=application%2Foctet-stream
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
wget http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office-10.1.0.5672-1.a21.x86_64.rpm

#Install the desired rpms
dnf install -y lsb
dnf install -y libXScrnSaver
#rpm -ivh google-play-music-desktop-player-3.3.0.x86_64.rpm
rpm -ivh google-chrome-stable_current_x86_64.rpm
rpm -ivh wps-office-10.1.0.5672-1.a21.x86_64.rpm

#Remove undesired packages
dnf remove -y libreoffice*

#This is a list of extensions to Gnome that I have installed/enabled
# Applications Menu
# Background logo
# Caffeine
# Dash to dock
# Drop down terminal
# Topicons Plus
