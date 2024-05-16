#!/bin/bash

source utils.sh

# install xorg & more
exec_step 1 3 "installing Xorg & more..." "sudo pacman -S xorg-server xorg-xinit xf86-input-libinput"

# configuring xorg
exec_step 2 3 "configuring Xorg..." "sudo Xorg :1 -configure"

# copying .xinitrc
exec_step 3 3 "copying ~/.xinitrc..." "cp /etc/X11/xinit/xinitrc ~/.xinitrc"

# setting up Xauthority
exec_step 3 3 "setting up ~/.Xauthority..." "touch ~/.Xauthority;chmod 600 ~/.Xauthority"



script_ok "xorg install script finished - EXPERIMENTAL"
