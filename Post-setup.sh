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
dnf install -y snapd
dnf install -y dconf-editor

#DNF Programs
dnf install -y steam
dnf install -y qbittorrent
dnf install -y fedy
dnf install -y vlc
dnf install -y kaffeine


#Adding alias
echo "alias dnf="sudo dnf"" ~/.bashrc

#Install the desired rpms
dnf install -y lsb
dnf install -y libXScrnSaver

#Install Snaps
dnf install snapd
ln -s /var/lib/snapd/snap /snap
snap install snap-store
snap install --classic atom
snap install wps-office
snap install google-play-music-desktop-player

#Install the desired Extras. They are now in the folder when downloading
sh Installs/polo*amd64.run

#Copying configs
#cp -ri .config/* /home/$USER/.config

echo "Make sure to install the following extensions

#This is a list of extensions to Gnome that I have installed/enabled
# Applications Menu
# Background logo
# Caffeine
# Dash to dock
# Frippery move clock
# Horizontal workspaces
# Media Player indicator
# Remove dropdown arrows
# Transparent top bar
# Topicons Plus
# User themes

#Need to configure
# Shellshape

echo "Make sure to install Insync"
echo "Install WPS Office at http://linux.wps.com"
