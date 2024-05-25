#!/bin/bash

source utils/utils.sh

N="tmux-install"
S="4"

script_start $N

# install tmux
exec_step $N 1 $S "installing tmux..." "sudo pacman -S --noconfirm tmux"

# installing tpm
exec_step $N 2 $S "installing tmux plugin manager (tpm)..." "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"

# copy and source tmux conf
exec_step $N 3 $S "copying and sourcing custom tmux config..." "cp ../resources/tmux.conf "$HOME/.tmux.conf";tmux source-file ~/.tmux.conf"

# install tpm plugins
exec_step $N 4 $S "installing tpm plugins..." "~/.tmux/plugins/tpm/bin/install_plugins"



script_ok $N
