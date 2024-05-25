#!/bin/sh

exec_step() {
  NAME=$1
  STEP=$2
  TOTAL_STEPS=$3
  TEXT=$4
  COMMAND_TO_EXECUTE=$5
  
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
  FORMATTED_TEXT="${magenta}dotman::${NAME} -> ${blue}[${green}${STEP}${blue}/${green}${TOTAL_STEPS}${blue}] ${yellow}${TEXT}${reset}"
  echo -e "$FORMATTED_TEXT"
  
  # exec command
  echo -e "${yellow}$ ${green}$COMMAND_TO_EXECUTE${reset}\n"
  eval "$COMMAND_TO_EXECUTE;echo -e ''"
}

script_start() {
  NAME=$1
  
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
  FORMATTED_TEXT="${magenta}dotman ${blue}[${green}START${blue}] ${yellow}${NAME}${reset}"

  echo -e "$FORMATTED_TEXT\n"
}

script_ok() {
  NAME=$1
  
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
  FORMATTED_TEXT="${magenta}dotman ${blue}[${green}OK${blue}] ${yellow}${NAME} finished${reset}"

  echo -e "$FORMATTED_TEXT"
}
