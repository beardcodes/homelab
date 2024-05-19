#!/bin/bash

# Function to display error messages and exit
error_exit() {
    echo "Error: $1" >&2
    exit 1
}

# Function to check if a command is available
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to install Docker
install_docker() {
    echo "Installing Docker..."
    if ! command_exists docker; then
        curl -fsSL https://get.docker.com | sudo sh || error_exit "Failed to install Docker"
    else
        echo "Docker is already installed."
    fi

    sudo systemctl enable --now docker || error_exit "Failed to start Docker service"
    echo "Docker installed successfully."
}

# Function to install Docker Compose
install_docker_compose() {
    echo "Installing Docker Compose..."
    if ! command_exists docker-compose; then
        sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose || error_exit "Failed to install Docker Compose"
        sudo chmod +x /usr/local/bin/docker-compose
    else
        echo "Docker Compose is already installed."
    fi
    echo "Docker Compose installed successfully."
}

# Function to install NGINX Proxy Manager
install_nginx_proxy_manager() {
    echo "Installing NGINX Proxy Manager..."
    # Add installation steps here
}

# Function to install other applications
install_other_apps() {
    # Add installation steps for other applications here
}

# Main function
main() {
    clear
    echo "Welcome to the Docker Application Installer!"

    # Check for root privileges
    if [ "$(id -u)" -ne 0 ]; then
        error_exit "This script must be run as root"
    fi

    # Check for internet connectivity
    if ! ping -q -c 1 -W 1 google.com >/dev/null; then
        error_exit "No internet connection available"
    fi

    # Install Docker
    install_docker

    # Install Docker Compose
    install_docker_compose

    # Install NGINX Proxy Manager
    install_nginx_proxy_manager

    # Install other applications
    install_other_apps

    echo "Installation completed successfully!"
}

# Call the main function
main
