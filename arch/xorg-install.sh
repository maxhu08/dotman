#!/bin/sh

source utils/utils.sh

N="xorg-install"
S="5"

script_start $N

# install xorg & more
exec_step $N 1 $S "installing Xorg & more..." "sudo pacman -S --noconfirm xorg-server xorg-xinit xf86-input-libinput"

# configuring xorg
exec_step $N 2 $S "configuring Xorg..." "sudo Xorg :1 -configure"

# copying .xinitrc
exec_step $N 3 $S "copying ~/.xinitrc..." "cp ../resources/.xinitrc ~/.xinitrc"

# make .xinitrc executable
exec_step $N 4 $S "make ~/.xinitrc executable..." "chmod +x ~/.xinitrc"

# setting up Xauthority
exec_step $N 5 $S "setting up ~/.Xauthority..." "touch ~/.Xauthority;chmod 600 ~/.Xauthority"



script_ok $N
