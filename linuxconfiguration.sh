#!/bin/bash

sudo apt update -y

sudo apt upgrade -y

sudo apt install terminator -y

sudo apt install net-tools -y

sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils -y

sudo adduser alex libvirt

sudo adduser alex kvm

sudo apt install virt-manager -y

sudo apt install figlet -y

sudo apt install wireshark -y

sudo apt install gparted -y
sudo apt install flatpak -y
flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak update -y
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.jgraph.drawio.desktop
flatpak install flathub org.videolan.VLC
flatpak install flathub us.zoom.Zoom
flatpak install flathub com.simplenote.Simplenote
flatpak install flathub org.qbittorrent.qBittorrent
sudo apt install nmap
flatpak install flathub com.getpostman.Postman
flatpak install flathub com.spotify.Client
git clone https://github.com/athityakumar/colorls.git

# clean
sudo find /var/ -size +10M -ls | sort -n -r -k 7

sudo truncate -s 0 /var/log/syslog

sudo journalctl --disk-usage

sudo journalctl --rotate

sudo journalctl --vacuum-time=1s

sudo journalctl --rotate --vacuum-size=500M

sudo snap list --all | while read snapname ver rev trk pub notes; do if [[ $notes = *disabled* ]]; then snap remove "$snapname" --revision="$rev"; fi; done

print important and shutdown


read a

sudo ./see.sh

