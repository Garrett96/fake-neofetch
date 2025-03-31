
#!/bin/bash

# Default system information (can be customized by user)
FAKE_CPU="AMD Ryzen 9 5950X 16-Core Processor"
FAKE_RAM="128GB DDR4"
FAKE_DISK="4TB NVMe SSD"
FAKE_VIRT="KVM/QEMU" #off by default
FAKE_HOSTNAME="PowerEdge R750"
FAKE_OS="Linux Custom"
FAKE_KERNEL="6.1.0-fake"
FAKE_UPTIME="420h 69m"
FAKE_PACKAGES="1337"
FAKE_SHELL="zsh"
FAKE_RESOLUTION="1920x1080"
FAKE_DE="KDE Plasma 5.27"
FAKE_WM="KWin"
FAKE_THEME="Nord Dark"
FAKE_ICONS="Papirus-Dark"
FAKE_IMAGE="default"
FAKE_MEM="/ 15909MiB"

# Allow user to customize parameters via arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --cpu) FAKE_CPU="$2"; shift 2 ;;
        --ram) FAKE_RAM="$2"; shift 2 ;;
        --disk) FAKE_DISK="$2"; shift 2 ;;
        --virt) FAKE_VIRT="$2"; shift 2 ;;
        --mem) FAKE_MEM="$2"; shift 2 ;;
        --hostname) FAKE_HOSTNAME="$2"; shift 2 ;;
        --os) FAKE_OS="$2"; shift 2 ;;
        --kernel) FAKE_KERNEL="$2"; shift 2 ;;
        --uptime) FAKE_UPTIME="$2"; shift 2 ;;
        --image) FAKE_IMAGE="$2"; shift 2 ;;
        *) shift ;; # Ignore unknown options
    esac
done

# Colors for better display
GREEN="\e[32m"
CYAN="\e[36m"
WHITE="\e[37m"
YELLOW="\e[33m"
MAGENTA="\e[35m"
RESET="\e[0m"

# Function to display system information
show_system_info() {
    printf "${YELLOW}Fake Neofetch\n"
    printf "${YELLOW}----------------------\n"
    printf "${YELLOW}OS: ${WHITE}%s${RESET}\n" "$FAKE_OS"
    printf "${YELLOW}Host: ${WHITE}%s${RESET}\n" "$FAKE_HOSTNAME"
    printf "${YELLOW}Kernel: ${WHITE}%s${RESET}\n" "$FAKE_KERNEL"
    printf "${YELLOW}Uptime: ${WHITE}%s${RESET}\n" "$FAKE_UPTIME"
    printf "${YELLOW}Packages: ${WHITE}%s${RESET}\n" "$FAKE_PACKAGES"
    printf "${YELLOW}Shell: ${WHITE}%s${RESET}\n" "$FAKE_SHELL"
    printf "${YELLOW}Resolution: ${WHITE}%s${RESET}\n" "$FAKE_RESOLUTION"
    printf "${YELLOW}DE: ${WHITE}%s${RESET}\n" "$FAKE_DE"
    printf "${YELLOW}WM: ${WHITE}%s${RESET}\n" "$FAKE_WM"
    printf "${YELLOW}WM Theme: ${WHITE}%s${RESET}\n" "$FAKE_THEME"
    printf "${YELLOW}Icons: ${WHITE}%s${RESET}\n" "$FAKE_ICONS"
    printf "${YELLOW}CPU: ${WHITE}%s${RESET}\n" "$FAKE_CPU"
    printf "${YELLOW}GPU: ${WHITE}%s${RESET}\n" "$FAKE_DISK"
    printf "${YELLOW}Memory: ${WHITE}%s${RESET}\n" "$FAKE_MEM"
}

# Resources for custom ASCII: 
# [1] https://www.asciiart.eu/
# [2] https://www.asciiarthub.com/
# [3] https://www.twitchquotes.com/copypastas/ascii-art

# Function to display ASCII image
show_ascii_image() {
    case "$FAKE_IMAGE" in
        "tux")
            printf "${CYAN}        .--.        ${RESET}\n"
            printf "${CYAN}       |o_o |       ${RESET}\n"
            printf "${CYAN}       |:_/ |       ${RESET}\n"
            printf "${CYAN}      //   \\\\      ${RESET}\n"
            printf "${CYAN}     (|     | )     ${RESET}\n"
            printf "${CYAN}    /'\\_   _/\`\\    ${RESET}\n"
            printf "${CYAN}    \\___)=(___/    ${RESET}\n"
            ;;
        "arch")
            printf "${CYAN}       /\\       ${RESET}\n"
            printf "${CYAN}      /  \\      ${RESET}\n"
            printf "${CYAN}     /\\   \\     ${RESET}\n"
            printf "${CYAN}    /      \\    ${RESET}\n"
            printf "${CYAN}   /   ,,   \\   ${RESET}\n"
            printf "${CYAN}  /   |  |  -\\  ${RESET}\n"
            ;;
        *)
            printf "${CYAN}       .-/+oossssoo+/-.       ${RESET}\n"
            printf "${CYAN}    :+ssssssssssssssssss+:    ${RESET}\n"
            printf "${CYAN}  -+ssssssssssssssssssyyssss+-  ${RESET}\n"
            printf "${CYAN} .ossssssssssssssssssdMMMNysssso. ${RESET}\n"
            ;;
    *)
	    echo "Unknown image: $FAKE_IMAGE"
	    ;;
    esac
}

# Call the function to display the ASCII image
lines=()
while IFS= read -r line; do
    lines+=("$line")
done < <(show_system_info)

show_ascii_image | while IFS= read -r ascii_line; do
    if [ ${#lines[@]} -gt 0 ]; then
        system_line=${lines[0]}
        lines=("${lines[@]:1}")
        printf "%s\t%s\n" "$ascii_line" "$system_line"
    else
        printf "%s\n" "$ascii_line"
    fi
done
