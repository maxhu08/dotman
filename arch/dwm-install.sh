#!/bin/sh

source utils/utils.sh

N="dwm-install"
S="4"

script_start $N

# make sure there is ~/Dev/suckless
exec_step $N 1 $S "creating suckless directory..." "mkdir -p ~/Dev/suckless"

# clone dwm
exec_step $N 2 $S "cloning mh's build of dwm..." "git clone https://github.com/maxhu08/dwm ~/Dev/suckless/dwm"

# install needed packages
exec_step $N 3 $S "installing required packages" "sudo pacman -S --noconfirm libxft libxinerama ttf-jetbrains-mono ttf-jetbrains-mono-nerd"

# building dwm
exec_step $N 4 $S "compiling dwm... [DOES NOT INCLUDE DMENU AND TERMINAL]" "cd ~/Dev/suckless/dwm;sudo make clean install"



script_ok $N
