#!/bin/bash

source utils/utils.sh

script_start "picom install script [REQUIRES PARU]"

# install picom-git (PICOM DOESN'T WORK)
exec_step 1 2 "installing picom..." "paru -S --noconfirm picom-git"

# copy picom config
exec_step 2 2 "copying custom picom config..." "mkdir -p ~/.config/picom;cp ../resources/picom.conf ~/.config/picom/picom.conf"



script_ok "picom install script finished"
