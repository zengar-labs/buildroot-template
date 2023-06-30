#!/bin/bash

set -e

detect_os() {
    if [ -f /etc/os-release ]; then
        source /etc/os-release
        OS=$ID
    elif [ -f /etc/redhat-release ]; then
        OS="rhel"
    elif [ "$(uname -s)" == "Darwin" ]; then
        OS="macos"
    else
        echo "Unsupported OS. Please specify the OS manually."
        exit 1
    fi
}

install_qemu() {
    case "$1" in
        "ubuntu" | "debian")
            sudo apt-get install qemu-system build-essential libssl-dev 
            ;;
        "rhel")
            sudo yum install qemu-system build-essential libssl-dev
            ;;
        "macos")
            # Assuming qemu is installed via Homebrew on macOS
            brew install qemu build-essential libssl-dev
            ;;
        *)
            echo "Unsupported OS. Please specify a valid OS: ubuntu, debian, rhel, macos."
            exit 1
            ;;
    esac
}

if [ -z "$1" ]; then
    detect_os
else
    OS=$1
fi

install_qemu "$OS"
