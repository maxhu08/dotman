#!/bin/bash

# install fish
echo "[1/3] installing fish & more"
echo "> sudo pacman -S fish zoxide eza"
sudo pacman -S fish zoxide

# Ensure Fish shell is set as default shell
echo "[2/3] settings fish as default shell..."
echo "> chsh -s /usr/bin/fish"
chsh -s /usr/bin/fish

# copy config
echo "[3/3] copying fish config into ~/.config/fish/config.fish"
echo"> mkdir -p ~/.config/fish;cp path_to_your_config_file ~/.config/fish/config.fish"
mkdir -p ~/.config/fish;cp ../resources/config.fish ~/.config/fish/config.fish

echo "[OK] Fish shell installed successfully."
