#! /bin/bash
# This is a post-install setup script. It installs themes and programs I find useful or necessary.
# Feel free to create new branches if desired.
# WARNING: This script will be updated ittermitently and may have dead links, may not function, and may completely destroy all your data. I am not responsbile for any problems that may occur. You are using this at your own risk.

# Gnome Tweak Tool and a few customizations
dnf install -y gnome-tweak-tool
dnf copr enable snwh/paper
dnf -y install paper-icon-theme paper-gtk-theme
#Now using Numix Icons installed through Fedy

#RPM Fusion Repos
dnf install -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Facebook Messenger Repo
#wget https://bintray.com/aluxian/rpm/rpm -O /etc/yum.repos.d/bintray-aluxian-rpm.repo

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
dnf install -y conky

#dnf install -y messengerfordesktop

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
cd RPM/
rpm -ivh atom.rpm
rpm -ivh music.rpm

#Opera Install
wget https://download.opera.com/download/get/?partner=www&opsys=Linux&package=RPM
rpm -ivh opera*

#WPS Office Install
wget http://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/8865/wps-office-11.1.0.8865-1.x86_64.rpm
rpm -ivh wps*

#Insync Install
rpm --import https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key
cd /
touch /etc/yum.repos.d/insync.repo
cd /etc/yum.repos.d/
echo -e "
[insync] \n
name=insync repo \n
baseurl=http://yum.insync.io/[DISTRIBUTION]/$releasever/ \n
gpgcheck=1 \n
gpgkey=https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key \n
enabled=1 \n
metadata_expire=120m \n
" > insync.repo
dnf install insync

#Remove undesired packages
#dnf remove -y libreoffice*


#This is a list of extensions to Gnome that I have installed/enabled
# Applications Menu
# Background logo
# Caffeine
# Dash to dock
# Transparent top bar
# Topicons Plus
