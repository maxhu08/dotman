#!/bin/bash

source utils/utils.sh

script_start "paru-install script"

# install required packages
exec_step 1 3 "installing required packages..." "sudo pacman -S base-devel rust"

# cloning paru
exec_step 2 3 "cloning paru..." "mkdir -p ~/Dev/cloned/paru;git clone https://aur.archlinux.org/paru ~/Dev/cloned/paru"

# building & installing paru
exec_step 3 3 "building & installing paru..." "cd ~/Dev/cloned/paru;makepkg -si"



script_ok "paru install script finished"
