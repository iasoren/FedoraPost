#! /bin/bash
# This is a post-install setup script. It installs themes and programs I find useful or necessary.
# Feel free to create new branches if desired.

# Gnome Tweak Tool and a few customizations
dnf install -y gnome-tweak-tool

#RPM Fusion Repos
dnf localinstall -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Update the system
dnf update -y dnf
dnf update -y

#Virtualisation
dnf install -y @virtualization
dnf install -y libvirt

#Utilities


#Games


#Internet


#Multimedia
dnf install -y vlc

