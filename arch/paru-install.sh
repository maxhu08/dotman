#!/bin/bash

source utils/utils.sh

N="paru-install"
S="3"

script_start $N

# install required packages
exec_step $N 1 $S "installing required packages..." "sudo pacman -S --noconfirm base-devel rust"

# cloning paru
exec_step $N 2 $S "cloning paru..." "mkdir -p ~/Dev/cloned/paru;git clone https://aur.archlinux.org/paru ~/Dev/cloned/paru"

# building & installing paru
exec_step $N 3 $S "building & installing paru..." "cd ~/Dev/cloned/paru;makepkg -si"



script_ok $N
