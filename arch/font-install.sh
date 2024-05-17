#!/bin/bash

source utils/utils.sh

script_start "font-install script"

# install fonts
exec_step 1 1 "installing fonts..." "sudo pacman -S noto-fonts ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-apple-emoji"



script_ok "font install script finished"
