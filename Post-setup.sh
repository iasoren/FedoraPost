#! /bin/bash
# This is a post-install setup script. It installs themes and programs I find useful or necessary.
# Feel free to create new branches if desired.
# WARNING: This script will be updated ittermitently and may have dead links, may not function, and may completely destroy all your data. I am not responsbile for any problems that may occur. You are using this at your own risk.

#COPR Enabling
dnf copr enable -y kwizart/fedy

#RPM Fusion Repos
dnf install -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Update the system
dnf update -y
dnf install -y dnf-plugin-system-upgrade

# Gnome Tweak Tool and a few customizations
dnf install -y gnome-tweak-tool
#Now using Numix Icons installed through Fedy


#Virtualisation
dnf install -y @virtualization
dnf install -y libvirt

#Utilities
dnf install -y nano
dnf install -y ffmpeg

#DNF Programs
dnf install -y steam
dnf install -y qbittorrent
dnf install -y fedy
dnf install -y vlc
dnf install -y kaffeine

#Install the desired rpms
dnf install -y lsb
dnf install -y libXScrnSaver

#Install the desired RPMs. They are now in the folder when downloading
cd RPM/
rpm -ivh atom.rpm
rpm -ivh music.rpm
rpm -ivh opera.rpm
rpm -ivh wps.rpm

echo "Make sure to install the following extensions

#This is a list of extensions to Gnome that I have installed/enabled
# Applications Menu
# Background logo
# Caffeine
# Dash to dock
# Transparent top bar
# Topicons Plus"

echo "Make sure to install Insync"
echo "Install WPS Office at http://linux.wps.com"
