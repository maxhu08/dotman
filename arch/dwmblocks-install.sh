#!/bin/sh

source utils/utils.sh

N="dwmblocks-install"
S="3"

script_start $N

# make sure there is ~/Dev/suckless
exec_step $N 1 $S "creating suckless directory..." "mkdir -p ~/Dev/suckless"

# clone dwmblocks
exec_step $N 2 $S "cloning mh's build of dwmblocks..." "git clone https://github.com/maxhu08/dwmblocks ~/Dev/suckless/dwmblocks"

# building dwmblocks
exec_step $N 3 $S "compiling dwmblocks..." "cd ~/Dev/suckless/dwmblocks;sudo make clean install"



script_ok $N
