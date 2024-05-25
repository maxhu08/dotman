#!/bin/sh

source utils/utils.sh

N="alacritty-install"
S="2"

script_start $N

# install alacritty
exec_step $N 1 $S "installing alacritty..." "sudo pacman -S --noconfirm alacritty"

# copy alacritty.toml
exec_step $N 2 $S "copying custom alacritty.conf..." "mkdir -p ~/.config/alacritty;cp ../resources/alacritty.toml ~/.config/alacritty/alacritty.toml"



script_ok $N
