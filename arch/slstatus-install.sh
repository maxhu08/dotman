#!/bin/bash

source utils/utils.sh

script_start "slstatus install script"

# make sure there is ~/Dev/suckless
exec_step 1 3 "creating suckless directory..." "mkdir -p ~/Dev/suckless"

# clone slstatus
exec_step 2 3 "cloning mh's build of slstatus..." "git clone https://github.com/maxhu08/slstatus ~/Dev/suckless/slstatus"

# building slstatus
exec_step 3 3 "compiling slstatus..." "cd ~/Dev/suckless/slstatus;sudo make clean install"



script_ok "slstatus install script finished"
