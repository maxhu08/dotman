#!/bin/bash

source utils.sh

# make sure there is ~/Dev/cloned
exec_step 1 4 "creating cloned directory..." "mkdir -p ~/Dev/cloned"

# clone dwm
exec_step 2 4 "cloning mh's build of dwm..." "git clone https://github.com/maxhu08/dwm ~/Dev/cloned"

# building dwm
exec_step 3 4 "compiling dwm..." "cd ~/Dev/cloned/dwm;sudo make clean install"

# add to ~/.xinitrc
exec_step 4 4 "adding dwm to ~/.xinitrc..." "echo "exec dwm" >> "$HOME/.xinitrc""



script_ok "dwm install script finished"
