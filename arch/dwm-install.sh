#!/bin/bash

source utils.sh

# make sure there is ~/Dev/cloned
exec_step 1 5 "creating cloned directory..." "mkdir -p ~/Dev/cloned"

# clone dwm
exec_step 2 5 "cloning mh's build of dwm..." "git clone https://github.com/maxhu08/dwm ~/Dev/cloned/dwm"

# install ne5ded packages
exec_step 3 5 "installing required packages" "sudo pacman -S libxft libxinerama"

# building d5m
exec_step 4 5 "compiling dwm..." "cd ~/Dev/cloned/dwm;sudo make clean install"

# add to ~/.5initrc
exec_step 5 5 "adding dwm to ~/.xinitrc..." "echo 'exec dwm' > '$HOME/.xinitrc'"



script_ok "dwm install script finished"
