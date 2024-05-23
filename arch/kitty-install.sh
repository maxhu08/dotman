#!/bin/bash

source utils/utils.sh

script_start "kitty install script"

# install kitty
exec_step 1 2 "installing kitty..." "sudo pacman -S --noconfirm kitty"

# copy kitty.conf
exec_step 2 2 "copying custom kitty.conf..." "mkdir -p ~/.config/kitty;cp ../resources/kitty.conf ~/.config/kitty/kitty.conf"



script_ok "kitty install script finished"
