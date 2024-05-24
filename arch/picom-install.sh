#!/bin/bash

source utils/utils.sh

script_start "picom install script"

# install picom
exec_step 1 2 "installing picom..." "sudo pacman -S --noconfirm picom"

# copy picom config
exec_step 2 2 "copying custom picom config..." "mkdir -p ~/.config/picom;cp ../resources/picom.conf ~/.config/picom/picom.conf"



script_ok "picom install script finished"
