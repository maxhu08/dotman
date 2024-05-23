#!/bin/bash

source utils/utils.sh

script_start "font install script [REQUIRES PARU]"

# install fonts
exec_step 1 1 "installing fonts..." "paru -S --noconfirm noto-fonts ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-apple-emoji"



script_ok "font install script finished"
