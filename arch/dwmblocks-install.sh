#!/bin/bash

source utils/utils.sh

script_start "dwmblocks install script"

# make sure there is ~/Dev/suckless
exec_step 1 3 "creating suckless directory..." "mkdir -p ~/Dev/suckless"

# clone dwmblocks
exec_step 2 3 "cloning mh's build of dwmblocks..." "git clone https://github.com/maxhu08/dwmblocks ~/Dev/suckless/dwmblocks"

# building dwmblocks
exec_step 3 3 "compiling dwmblocks..." "cd ~/Dev/suckless/dwmblocks;sudo make clean install"



script_ok "dwmblocks install script finished"
