#!/bin/bash

source utils.sh

# install tmux
exec_step 1 3 "installing tmux..." "sudo pacman -S tmux"

# copy tmux conf
exec_step 1 2 "copy custom tmux config..." "cp ../resources/tmux.conf "$HOME/.tmux.conf""

script_ok "tmux install script finished"
