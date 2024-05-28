#!/bin/sh

source utils/utils.sh

N="copy-scripts"
S="2"

script_start $N

# install directory
exec_step $N 1 $S "making scripts directory..." "mkdir -p ~/Dev/scripts"

# copying scripts
exec_step $N 2 $S "copying scripts..." "cp ../resources/scripts/* ~/Dev/scripts/"



script_ok $N
