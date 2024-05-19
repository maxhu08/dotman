#!/bin/bash

source utils/utils.sh

script_start "dwm-install script"

# make sure there is ~/Dev/cloned
exec_step 1 5 "creating cloned directory..." "mkdir -p ~/Dev/cloned"

# clone dwm
exec_step 2 5 "cloning mh's build of dwm..." "git clone https://github.com/maxhu08/dwm ~/Dev/cloned/dwm"

# install needed packages
exec_step 3 5 "installing required packages" "sudo pacman -S --noconfirm libxft libxinerama ttf-jetbrains-mono ttf-jetbrains-mono-nerd dmenu"

# building dwm
exec_step 4 5 "compiling dwm..." "cd ~/Dev/cloned/dwm;sudo make clean install"

# add to ~/.xinitrc
exec_step 5 5 "adding dwm to ~/.xinitrc..." "echo 'exec dwm' > '$HOME/.xinitrc'"



script_ok "dwm install script finished"
