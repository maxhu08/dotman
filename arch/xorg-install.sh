#!/bin/bash

# install required Xorg pkgs
echo "[1/3] installing Xorg and related packages..."
echo "> sudo pacman -S xorg-server xorg-xinit xf86-input-libinput xorg-xrandr"
sudo pacman -S xorg-server xorg-xinit xf86-input-libinput xorg-xrandr

# generate Xorg configuration file
echo "[2/3] generating initial Xorg configuration file..."
echo "> sudo Xorg :0 -configure"
sudo Xorg :0 -configure

# cop the generated configuration file to /etc/X11/xorg.conf
echo "[3/3] copying Xorg configuration file..."
echo "> sudo cp /root/xorg.conf.new /etc/X11/xorg.conf"
sudo cp /root/xorg.conf.new /etc/X11/xorg.conf

echo "[OK] Xorg setup complete"
