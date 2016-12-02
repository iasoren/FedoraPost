#! /bin/bash
# This is a post-install setup script. It installs themes and programs I find useful or necessary.
# Feel free to create new branches if desired.
# WARNING: This script will be updated ittermitently and may have dead links, may not function, and may completely destroy all your data. I am not responsbile for any problems that may occur. You are using this at your own risk.

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

#Oh-my-zsh
#dnf install -y zsh
#wget --no-check-certificate http://install.ohmyz.sh -O - | sh

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

#dnf install -y eclipse
#dnf copr enable decathorpe/syncthing -y
#dnf install -y syncthing
#dnf install -y syncthing-gtk
#dnf install -y syncthing-inotify

#Enable Syncthing
#systemctl --user enable syncthing.service
#systemctl --user enable syncthing-inotify.service
#systemctl --user start syncthing.service
#systemctl --user start syncthing-inotify.service


#Games
dnf install -y steam
dnf install -y wine

#Internet
dnf install -y qbittorrent

#Insync
#rpm --import https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key
#dnf config-manager --add-repo http://yum.insynchq.com/fedora/$releasever/
#dnf install -y insync

#Multimedia
dnf install -y vlc
dnf install -y kaffeine

#Install the desired rpms
dnf install -y lsb
dnf install -y libXScrnSaver

#Install the desired RPMs. They are now in the folder when downloading
rpm -ivh /RPM/atom.rpm
rpm -ivh /RPM/googlechrome.rpm
rpm -ivh /RPM/wps-office.rpm
rpm -ivh /RPM/music.rpm
rpm -ivh /RPM/insync.rpm
rpm -ivh /RPM/pomodoro.rpm

#Remove undesired packages
dnf remove -y libreoffice*

#Get Printer Driver (manual install)
wget http://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.0.0-1.gz

#This is a list of extensions to Gnome that I have installed/enabled
# Applications Menu
# Background logo
# Caffeine
# Dash to dock
# Topicons Plus
