#! /bin/bash
# This is a post-install setup script. It installs themes and programs I find useful or necessary.
# Feel free to create new branches if desired.
# WARNING: This script will be updated ittermitently and may have dead links, may not function, and may completely destroy all your data. I am not responsbile for any problems that may occur. You are using this at your own risk.

#COPR Enabling
dnf copr enable kwizart/fedy
dnf copr enable snwh/paper

#RPM Fusion Repos
dnf install -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Update the system
dnf update -y
dnf install -y dnf-plugin-system-upgrade

# Gnome Tweak Tool and a few customizations
dnf install -y gnome-tweak-tool
dnf -y install paper-icon-theme paper-gtk-theme
#Now using Numix Icons installed through Fedy


#Virtualisation
dnf install -y @virtualization
dnf install -y libvirt

#Utilities
dnf install -y nano
dnf install -y ffmpeg
dnf install -y conky

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

#Opera Install
wget https://download.opera.com/download/get/?partner=www&opsys=Linux&package=RPM
rpm -ivh opera*

#WPS Office Install
wget http://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/8865/wps-office-11.1.0.8865-1.x86_64.rpm
rpm -ivh wps*

#Insync Install
rpm --import https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key
dnf config-manager --add-repo http://yum.insynchq.com/fedora/$releasever/
#cd /
#touch /etc/yum.repos.d/insync.repo
#cd /etc/yum.repos.d/
#echo -e "
#[insync] \n
#name=insync repo \n
#baseurl=http://yum.insync.io/[DISTRIBUTION]/$releasever/ \n
#gpgcheck=1 \n
#gpgkey=https://d2t3ff60b2tol4.cloudfront.net/repomd.xml.key \n
#enabled=1 \n
#metadata_expire=120m \n
#" > insync.repo
dnf install -y insync

#Remove undesired packages
dnf remove -y libreoffice*


#This is a list of extensions to Gnome that I have installed/enabled
# Applications Menu
# Background logo
# Caffeine
# Dash to dock
# Transparent top bar
# Topicons Plus
