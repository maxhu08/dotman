#!/bin/bash

print_colored_text() {
  local step="$1"
  local total_steps="$2"
  local text="$3"

  case $step in
    1)
      color="\e[31m"  # Red
      ;;
    2)
      color="\e[32m"  # Green
      ;;
    3)
      color="\e[34m"  # Blue
      ;;
    *)
      color="\e[0m"   # Default color
      ;;
  esac

  echo -e "$color[$step/$total_steps] $text\e[0m"
}

print_ok_text() {
  echo -e "\e[32m[OK] $1\e[0m"
}

# install fish
print_colored_text 1 3 "installing fish & more"
echo "> sudo pacman -S fish zoxide eza"
sudo pacman -S fish zoxide

# set fish as default shell
print_colored_text 2 3 "setting fish as default shell..."
echo "> chsh -s /usr/bin/fish"
chsh -s /usr/bin/fish

# copy fish config
print_colored_text 3 3 "copying fish config into ~/.config/fish/config.fish"
echo "> mkdir -p ~/.config/fish; cp ../resources/config.fish ~/.config/fish/config.fish"
mkdir -p ~/.config/fish; cp ../resources/config.fish ~/.config/fish/config.fish

print_ok_text "Fish shell installed successfully."
