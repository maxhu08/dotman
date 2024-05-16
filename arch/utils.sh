#!/bin/bash

exec_step() {
  step=$1
  total_steps=$2
  text=$3
  command_to_execute=$4

  step_str="$step/$total_steps"
  
  # colors
  black="\e[1;30m"
  red="\e[1;31m"
  green="\e[1;32m"
  yellow="\e[1;33m"
  blue="\e[1;34m"
  magenta="\e[1;35m"
  cyan="\e[1;36m"
  white="\e[1;37m"
  reset="\e[0m"
  
  # log info
  formatted_text="${magenta}dotman ${blue}[${green}${step}${blue}/${green}${total_steps}${blue}] ${yellow}${text}${reset}"
  echo -e "$formatted_text"
  
  # exec command
  echo -e "${yellow}$ ${green}$command_to_execute${reset}\n"
  eval "$command_to_execute"
}

# example
# exec_step 1 5 "Running some command" "echo "test""

script_start() {
  message=$1
  
  # colors
  black="\e[1;30m"
  red="\e[1;31m"
  green="\e[1;32m"
  yellow="\e[1;33m"
  blue="\e[1;34m"
  magenta="\e[1;35m"
  cyan="\e[1;36m"
  white="\e[1;37m"
  reset="\e[0m"
  
  # log info
  formatted_text="${magenta}dotman ${blue}[${green}START${blue}] ${yellow}${message}${reset}"

  echo -e "$formatted_text\n"
}

script_ok() {
  message=$1
  
  # colors
  black="\e[1;30m"
  red="\e[1;31m"
  green="\e[1;32m"
  yellow="\e[1;33m"
  blue="\e[1;34m"
  magenta="\e[1;35m"
  cyan="\e[1;36m"
  white="\e[1;37m"
  reset="\e[0m"
  
  # log info
  formatted_text="${magenta}dotman ${blue}[${green}OK${blue}] ${yellow}${message}${reset}"

  echo -e "$formatted_text"
}

# example
# script_ok "script is done"
