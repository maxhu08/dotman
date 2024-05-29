#!/bin/sh

source utils/utils.sh

N="dmenu-install"
S="3"

script_start $N

# make sure there is ~/Dev/suckless
exec_step $N 1 $S "creating suckless directory..." "mkdir -p ~/Dev/suckless"

# clone dwm
exec_step $N 2 $S "cloning mh's build of dmenu..." "git clone https://github.com/maxhu08/dmenu ~/Dev/suckless/dmenu"

# building dwm
exec_step $N 3 $S "compiling dmenu..." "cd ~/Dev/suckless/dmenu;sudo make clean install"



script_ok $N
