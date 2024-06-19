#!/bin/sh

source utils/utils.sh

N="ly-install"
S="2"

script_start $N

# install ly
exec_step $N 1 $S "installing ly..." "sudo pacman -S --noconfirm ly"

# enable ly
exec_step $N 2 $S "enabling ly display manager..." "systemctl enable ly"



script_ok $N
