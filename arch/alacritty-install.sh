#!/bin/bash

source utils/utils.sh

script_start "alacritty-install script"

# install alacritty
exec_step 1 2 "installing alacritty..." "sudo pacman -S --noconfirm alacritty"

# copy alacritty.toml
exec_step 2 2 "copying custom alacritty.conf..." "mkdir -p ~/.config/alacritty;cp ../resources/alacritty.toml ~/.config/alacritty/alacritty.toml"



script_ok "alacritty install script finished"
