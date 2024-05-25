#!/bin/sh

source utils/utils.sh

N="slstatus-install"
S="3"

script_start $N

# make sure there is ~/Dev/suckless
exec_step $N 1 $S "creating suckless directory..." "mkdir -p ~/Dev/suckless"

# clone slstatus
exec_step $N 2 $S "cloning mh's build of slstatus..." "git clone https://github.com/maxhu08/slstatus ~/Dev/suckless/slstatus"

# building slstatus
exec_step $N 3 $S "compiling slstatus..." "cd ~/Dev/suckless/slstatus;sudo make clean install"



script_ok $N
