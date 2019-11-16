#! /bin/bash
# This is a post-install setup script. It installs themes and programs I find useful or necessary.
# Feel free to create new branches if desired.
# WARNING: This script will be updated ittermitently and may have dead links, may not function, and may completely destroy all your data. I am not responsbile for any problems that may occur. You are using this at your own risk.

# Gnome Tweak Tool and a few customizations
dnf install -y gnome-tweak-tool
dnf config-manager --add-repo http://download.opensuse.org/repositories/home:snwh:paper/Fedora_24/home:snwh:paper.repo
dnf install -y paper-gtk-theme
dnf install -y paper-icon-theme
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
#Using Opera so Chrome is obsolete
#rpm -ivh /RPM/googlechrome.rpm
#Now using Office 2013 in Crossover 16, makes WPS obsolete
rpm -ivh wps-office.rpm
#rpm -ivh /RPM/music.rpm
#rpm -ivh /RPM/insync.rpm
#rpm -ivh /RPM/pomodoro.rpm
wget https://download.opera.com/download/get/?partner=www&opsys=Linux&package=RPM
dnf install opera*

#Remove undesired packages
#dnf remove -y libreoffice*

#Get Printer Driver (manual install)
#wget http://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.0.0-1.gz

#echo "#Conky widget by m@, based on Manjaro Openbox edition conky" >> .conkyrc
#echo "update_interval 1" >> .conkyrc
#echo "total_run_times 0" >> .conkyrc
#echo "net_avg_samples 1" >> .conkyrc
#echo "cpu_avg_samples 1" >> .conkyrc
#echo "imlib_cache_size 0" >> .conkyrc
#echo "double_buffer yes" >> .conkyrc
#echo "no_buffers yes" >> .conkyrc
#echo "use_xft yes" >> .conkyrc
#echo "xftfont Droid Sans:size=9" >> .conkyrc
#echo "override_utf8_locale yes" >> .conkyrc
#echo "text_buffer_size 2048" >> .conkyrc
#echo "own_window yes" >> .conkyrc
#echo "own_window_type desktop" >> .conkyrc
#echo "own_window_transparent yes" >> .conkyrc
#echo "own_window_hints undecorated,sticky,skip_taskbar,skip_pager" >> .conkyrc
#echo "alignment top_right" >> .conkyrc
#echo "gap_x 10" >> .conkyrc
#echo "gap_y 60" >> .conkyrc
#echo "minimum_size 280 0" >> .conkyrc
#echo "default_bar_size 30 8" >> .conkyrc
#echo "draw_shades no" >> .conkyrc
#echo "default_color c5c5c5" >> .conkyrc
#echo "default_shade_color 000000" >> .conkyrc
#echo "color0 8DBC68" >> .conkyrc
#echo "color1 c5c5c5" >> .conkyrc
#echo "color2 c5c5c5" >> .conkyrc
#echo "own_window_argb_visual yes" >> .conkyrc
#echo "own_window_colour 000000" >> .conkyrc
#echo "own_window_argb_value 0" >> .conkyrc

#echo "TEXT" >> .conkyrc
#echo "${goto 180}${color0}${font Droid Sans:style=bold:size=13}${voffset 35}${exec whoami}" >> .conkyrc
#echo "${voffset -30}${font Droid Sans:style=Bold:size=12}${color}${goto 40}${uptime}" >> .conkyrc
#echo "${goto 80}${color1}${font Droid Sans:style=Bold:size=12}${color1}${sysname}${color}${font}" >> .conkyrc
#echo "${voffset 40}${font Droid Sans:style=Bold:size=11}${goto 128}CPU0${goto 218}GHz" >> .conkyrc
#echo "${font Droid Sans:style=Bold:size=11}${goto 128}${cpu cpu1}%${goto 218}${freq_g}" >> .conkyrc
#echo "${voffset 40}${font Droid Sans:style=Bold:size=11}${goto 88}CPU1${goto 175}${font Droid Sans:style=Bold:size=11}CPU2" >> .conkyrc
#echo "${font Droid Sans:style=Bold:size=11}${goto 88}${cpu cpu2}%${goto 175}${font Droid Sans:style=Bold:size=11}${color1}${cpu cpu3}%" >> .conkyrc
#echo "${voffset 40}${goto 45}T°C${color1}${goto 128}CPU3" >> .conkyrc
#echo "${goto 45}${font Droid Sans:style=Bold:size=10}${exec sensors | grep 'Package id 0' | cut -c17-20}°C${goto 134}${font Droid Sans:style=Bold:size=11}${cpu cpu4}%${font Droid Sans:style=Bold:size=11}${color1}${font}" >> .conkyrc
#echo "${font Droid Sans:style=Bold:size=11}${font}" >> .conkyrc
#echo "${voffset 10}${goto 90}${font Droid Sans:style=Bold:size=11}RAM" >> .conkyrc
#echo "${goto 90}${font Droid Sans:style=Bold:size=11}${memperc}%" >> .conkyrc
#echo "${image /usr/share/conkypic/lsd.png -p 10,0}" >> .conkyrc

#echo "Please copy the conky image to /usr/share/conkypic/lsd.png"
#echo "Please enable in Gnome..."
#echo " Application menu, Background logo, Caffeine, Dash to dock, transparent top bar, and topicons plus"


#This is a list of extensions to Gnome that I have installed/enabled
# Applications Menu
# Background logo
# Caffeine
# Dash to dock
# Transparent top bar
# Topicons Plus
