#!/bin/sh

source utils/utils.sh

N="kitty-install"
S="2"

script_start $N

# install kitty
exec_step $N 1 $S "installing kitty..." "sudo pacman -S --noconfirm kitty"

# copy kitty.conf
exec_step $N 2 $S "copying custom kitty.conf..." "mkdir -p ~/.config/kitty;cp ../resources/kitty.conf ~/.config/kitty/kitty.conf"



script_ok $N
