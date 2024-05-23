#!/bin/bash

source utils/utils.sh

script_start "slock install script"

# make sure there is ~/Dev/suckless
exec_step 1 3 "creating suckless directory..." "mkdir -p ~/Dev/suckless"

# clone slock
exec_step 2 3 "cloning mh's build of slock..." "git clone https://github.com/maxhu08/slock ~/Dev/suckless/slock"

# building slock
exec_step 3 3 "compiling slock..." "cd ~/Dev/suckless/slock;sudo make clean install"



script_ok "slock install script finished"
