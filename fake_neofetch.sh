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
        --cpu)
            FAKE_CPU="$2"
            shift 2
            ;;
        --ram)
            FAKE_RAM="$2"
            shift 2
            ;;
        --disk)
            FAKE_DISK="$2"
            shift 2
            ;;
        --virt)
            FAKE_VIRT="$2"
            shift 2
            ;;
        --hostname)
            FAKE_HOSTNAME="$2"
            shift 2
            ;;
        --os)
            FAKE_OS="$2"
            shift 2
            ;;
        --kernel)
            FAKE_KERNEL="$2"
            shift 2
            ;;
        --uptime)
            FAKE_UPTIME="$2"
            shift 2
            ;;
        --image)
            FAKE_IMAGE="$2"
            shift 2
            ;;
        *)
            shift
            ;;
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
            echo -e "${CYAN}        .--.        ${RESET}"
            echo -e "${CYAN}       |o_o |       ${RESET}"
            echo -e "${CYAN}       |:_/ |       ${RESET}"
            echo -e "${CYAN}      //   \ \      ${RESET}"
            echo -e "${CYAN}     (|     | )     ${RESET}"
            echo -e "${CYAN}    /'\_   _/`\    ${RESET}"
            echo -e "${CYAN}    \___)=(___/    ${RESET}"
            ;;
        "arch")
            echo -e "${CYAN}       /\       ${RESET}"
            echo -e "${CYAN}      /  \      ${RESET}"
            echo -e "${CYAN}     /\   \     ${RESET}"
            echo -e "${CYAN}    /      \    ${RESET}"
            echo -e "${CYAN}   /   ,,   \   ${RESET}"
            echo -e "${CYAN}  /   |  |  -\  ${RESET}"
            ;;
        *)
            echo -e "${CYAN}       .-/+oossssoo+/-.       ${RESET}"
            echo -e "${CYAN}    `:+ssssssssssssssssss+:`    ${RESET}"
            echo -e "${CYAN}  -+ssssssssssssssssssyyssss+-  ${RESET}"
            echo -e "${CYAN} .ossssssssssssssssssdMMMNysssso. ${RESET}"
            echo -e "${CYAN}/ssssssssssshdmmNNmmyNMMMMhssssss/ ${RESET}"
            ;;
    esac
}

# Display fake neofetch
clear
show_ascii_image
echo -e "${GREEN}OS:${RESET} $FAKE_OS"
echo -e "${GREEN}Host:${RESET} $FAKE_HOSTNAME"
echo -e "${GREEN}Kernel:${RESET} $FAKE_KERNEL"
echo -e "${GREEN}Uptime:${RESET} $FAKE_UPTIME"
echo -e "${GREEN}Packages:${RESET} $FAKE_PACKAGES"
echo -e "${GREEN}Shell:${RESET} $FAKE_SHELL"
echo -e "${GREEN}Resolution:${RESET} $FAKE_RESOLUTION"
echo -e "${GREEN}DE:${RESET} $FAKE_DE"
echo -e "${GREEN}WM:${RESET} $FAKE_WM"
echo -e "${GREEN}Theme:${RESET} $FAKE_THEME"
echo -e "${GREEN}Icons:${RESET} $FAKE_ICONS"
echo -e "${GREEN}CPU:${RESET} $FAKE_CPU"
echo -e "${GREEN}RAM:${RESET} $FAKE_RAM"
echo -e "${GREEN}Disk:${RESET} $FAKE_DISK"
echo -e "${GREEN}Virtualization:${RESET} $FAKE_VIRT"
