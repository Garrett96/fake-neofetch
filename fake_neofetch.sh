
#!/bin/bash

# Default system information (can be customized by user)
FAKE_CPU="AMD Ryzen 9 5950X 16-Core Processor"
FAKE_RAM="128GB DDR4"
FAKE_DISK="4TB NVMe SSD"
FAKE_VIRT="KVM/QEMU"
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

# Allow user to customize parameters via arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --cpu) FAKE_CPU="$2"; shift 2 ;;
        --ram) FAKE_RAM="$2"; shift 2 ;;
        --disk) FAKE_DISK="$2"; shift 2 ;;
        --virt) FAKE_VIRT="$2"; shift 2 ;;
        --hostname) FAKE_HOSTNAME="$2"; shift 2 ;;
        --os) FAKE_OS="$2"; shift 2 ;;
        --kernel) FAKE_KERNEL="$2"; shift 2 ;;
        --uptime) FAKE_UPTIME="$2"; shift 2 ;;
        --image) FAKE_IMAGE="$2"; shift 2 ;;
        *) shift ;;  # Ignore unknown options
    esac
done

# Colors for better display
GREEN="\e[32m"
CYAN="\e[36m"
RESET="\e[0m"

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
    esac
}

# Call the function to display the ASCII image
show_ascii_image
