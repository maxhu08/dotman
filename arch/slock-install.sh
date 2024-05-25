#!/bin/sh

source utils/utils.sh

N="slock-install"
S="3"

script_start $N

# make sure there is ~/Dev/suckless
exec_step $N 1 $S "creating suckless directory..." "mkdir -p ~/Dev/suckless"

# clone slock
exec_step $N 2 $S "cloning mh's build of slock..." "git clone https://github.com/maxhu08/slock ~/Dev/suckless/slock"

# building slock
exec_step $N 3 $S "compiling slock..." "cd ~/Dev/suckless/slock;sudo make clean install"



script_ok $N
