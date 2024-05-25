#!/bin/sh

source utils/utils.sh

N="tmux-install"
S="2"

script_start $N

# install picom-git (PICOM DOESN'T WORK)
exec_step $N 1 $S "installing picom..." "paru -S --noconfirm picom-git"

# copy picom config
exec_step $N 2 $S "copying custom picom config..." "mkdir -p ~/.config/picom;cp ../resources/picom.conf ~/.config/picom/picom.conf"



script_ok $N
