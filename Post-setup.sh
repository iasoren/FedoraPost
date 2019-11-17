#! /bin/bash
# This is a post-install setup script. It installs themes and programs I find useful or necessary.
# Feel free to create new branches if desired.
# WARNING: This script will be updated ittermitently and may have dead links, may not function, and may completely destroy all your data. I am not responsbile for any problems that may occur. You are using this at your own risk.

#COPR Enabling
dnf copr enable -y kwizart/fedy
dnf copr enable -y snwh/paper

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
rpm -ivh opera.rpm

#WPS Office Install
#wget http://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/8865/wps-office-11.1.0.8865-1.x86_64.rpm
#rpm -ivh wps*

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

echo "Conky widget by m@, based on Manjaro Openbox edition conky" >> .conkyrc
echo "update_interval 1" >> .conkyrc
echo "total_run_times 0" >> .conkyrc
echo "net_avg_samples 1" >> .conkyrc
echo "cpu_avg_samples 1" >> .conkyrc
echo "imlib_cache_size 0" >> .conkyrc
echo "double_buffer yes" >> .conkyrc
echo "no_buffers yes" >> .conkyrc
echo "use_xft yes" >> .conkyrc
echo "xftfont Droid Sans:size=9" >> .conkyrc
echo "override_utf8_locale yes" >> .conkyrc
echo "text_buffer_size 2048" >> .conkyrc
echo "own_window yes" >> .conkyrc
echo "own_window_type desktop" >> .conkyrc
echo "own_window_transparent yes" >> .conkyrc
echo "own_window_hints undecorated,sticky,skip_taskbar,skip_pager" >> .conkyrc
echo "alignment top_right" >> .conkyrc
echo "gap_x 10" >> .conkyrc
echo "gap_y 60" >> .conkyrc
echo "minimum_size 280 0" >> .conkyrc
echo "default_bar_size 30 8" >> .conkyrc
echo "draw_shades no" >> .conkyrc
echo "default_color c5c5c5" >> .conkyrc
echo "default_shade_color 000000" >> .conkyrc
echo "color0 8DBC68" >> .conkyrc
echo "color1 c5c5c5" >> .conkyrc
echo "color2 c5c5c5" >> .conkyrc
echo "own_window_argb_visual yes" >> .conkyrc
echo "own_window_colour 000000" >> .conkyrc
echo "own_window_argb_value 0" >> .conkyrc

echo "TEXT" >> .conkyrc
echo "${goto 180}${color0}${font Droid Sans:style=bold:size=13}${voffset 35}${exec whoami}" >> .conkyrc
echo "${voffset -30}${font Droid Sans:style=Bold:size=12}${color}${goto 40}${uptime}" >> .conkyrc
echo "${goto 80}${color1}${font Droid Sans:style=Bold:size=12}${color1}${sysname}${color}${font}" >> .conkyrc
echo "${voffset 40}${font Droid Sans:style=Bold:size=11}${goto 128}CPU0${goto 218}GHz" >> .conkyrc
echo "${font Droid Sans:style=Bold:size=11}${goto 128}${cpu cpu1}%${goto 218}${freq_g}" >> .conkyrc
echo "${voffset 40}${font Droid Sans:style=Bold:size=11}${goto 88}CPU1${goto 175}${font Droid Sans:style=Bold:size=11}CPU2" >> .conkyrc
echo "${font Droid Sans:style=Bold:size=11}${goto 88}${cpu cpu2}%${goto 175}${font Droid Sans:style=Bold:size=11}${color1}${cpu cpu3}%" >> .conkyrc
echo "${voffset 40}${goto 45}T°C${color1}${goto 128}CPU3" >> .conkyrc
echo "${goto 45}${font Droid Sans:style=Bold:size=10}${exec sensors | grep 'Package id 0' | cut -c17-20}°C${goto 134}${font Droid Sans:style=Bold:size=11}${cpu cpu4}%${font Droid Sans:style=Bold:size=11}${color1}${font}" >> .conkyrc
echo "${font Droid Sans:style=Bold:size=11}${font}" >> .conkyrc
echo "${voffset 10}${goto 90}${font Droid Sans:style=Bold:size=11}RAM" >> .conkyrc
echo "${goto 90}${font Droid Sans:style=Bold:size=11}${memperc}%" >> .conkyrc
echo "${image /usr/share/conkypic/lsd.png -p 10,0}" >> .conkyrc

echo "Please copy the conky image to /usr/share/conkypic/lsd.png"
echo "Please enable in Gnome..."
echo " Application menu, Background logo, Caffeine, Dash to dock, transparent top bar, and topicons plus"

#This is a list of extensions to Gnome that I have installed/enabled
# Applications Menu
# Background logo
# Caffeine
# Dash to dock
# Transparent top bar
# Topicons Plus
