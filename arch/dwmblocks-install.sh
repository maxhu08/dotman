#!/bin/bash

source utils/utils.sh

script_start "dwmblocks-install script"

# make sure there is ~/Dev/suckless
exec_step 1 5 "creating suckless directory..." "mkdir -p ~/Dev/suckless"

# clone dwmblocks
exec_step 2 5 "cloning mh's build of dwmblocks..." "git clone https://github.com/maxhu08/dwmblocks ~/Dev/suckless/dwmblocks"

# building dwmblocks
exec_step 3 4 "compiling dwm..." "cd ~/Dev/suckless/dwmblocks;sudo make clean install"

# add to ~/.xinitrc
exec_step 4 4 "adding dwm to ~/.xinitrc..." "echo 'exec dwm & exec dwmblocks' > '$HOME/.xinitrc'"



script_ok "dwm install script finished"
