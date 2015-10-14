#!/bin/bash

if [ -f /etc/lsb-release ]; then
  source /etc/lsb-release
  if [ $DISTRIB_ID = "Ubuntu" -a $DISTRIB_CODENAME = "trusty" ];then
    echo "Distro verified"
  else
    echo "Distro *NOT* verified"
    exit 1
  fi
else
    echo "Unknown Distro"
    exit 2
fi

# update package list
sudo apt-get update

# install packages
sudo apt-get -y install qemu-kvm libvirt-bin vlan xterm bridge-utils screen virt-manager \
  virt-viewer uml-utilities graphviz genisoimage gnome-terminal tree \
  curl w3m picocom expect lxc wmctrl xdotool pv bash-completion \
  libnetaddr-ip-perl libxml-libxml-perl libxml-tidy-perl libappconfig-perl \
  libreadonly-perl libterm-readline-perl-perl libnet-pcap-perl libnet-ipv6addr-perl \
  libsys-virt-perl libnet-telnet-perl liberror-perl libexception-class-perl \
  libxml-dom-perl libdbi-perl libmath-round-perl libio-pty-perl libnet-ip-perl \
  libxml-checker-perl libxml-parser-perl libfile-homedir-perl libswitch-perl

# install vnx per-se
mkdir /tmp/vnx-update
cd /tmp/vnx-update
rm -rf /tmp/vnx-update/vnx-*
wget http://vnx.dit.upm.es/vnx/vnx-latest.tgz
tar xfvz vnx-latest.tgz
cd vnx-*
sudo ./install_vnx

# download rootfs

if [ ! -d /usr/share/vnx/filesystems/vnx_rootfs_lxc_ubuntu-14.04-v025 ];then
    cd /usr/share/vnx/filesystems && \
    sudo vnx_download_rootfs -r vnx_rootfs_lxc_ubuntu-14.04-v025.tgz -y -l
fi

exit 0
