print_formatted_text() {
    step=$1
    total_steps=$2
    text=$3

    step_str="$step/$total_steps"
    
    # Define bold and color escape sequences
    bold="\033[1m"
    purple="\033[35m"
    red="\033[31m"
    green="\033[32m"
    yellow="\033[33m"
    reset="\033[0m"
    
    # Construct formatted text
    formatted_text="${bold}${purple}dotman [${red}${step}${reset}/${green}${total_steps}${reset}] ${yellow}${text}${reset}"

    echo -e "$formatted_text"
}

# Example usage:
print_formatted_text 1 5 "some textxtextextetetet"
