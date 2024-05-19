# Docker Application Installer

This is a Bash script for automating the installation of Docker and various Docker applications on Linux systems. It provides an easy way to set up Docker, Docker Compose, NGINX Proxy Manager, and other applications commonly used in Docker environments.

## Features

- **Automated Installation**: The script automates the installation process for Docker, Docker Compose, NGINX Proxy Manager, and other applications.
- **Error Handling**: Error messages are displayed with meaningful descriptions, and the script exits when an error occurs.
- **Root Privilege Check**: The script checks if it's being run with root privileges and exits if not.
- **Internet Connectivity Check**: Checks for internet connectivity before attempting to download files.
- **Modular Design**: Uses separate functions for different installation tasks, improving readability and maintainability.
- **Command Availability Check**: Checks if Docker and Docker Compose are already installed before attempting to install them.
- **Customization**: Easily customizable to add or modify installation steps for other applications.

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/your-username/docker-application-installer.git
    ```

2. Navigate to the cloned directory:

    ```bash
    cd docker-application-installer
    ```

3. Make the script executable:

    ```bash
    chmod +x installer.sh
    ```

4. Run the script as root:

    ```bash
    sudo ./installer.sh
    ```

5. Follow the prompts to select the OS/distro and choose the applications to install.

## Contributing

Contributions are welcome! If you find any bugs or have suggestions for improvements, please [open an issue](https://github.com/your-username/docker-application-installer/issues) or [create a pull request](https://github.com/your-username/docker-application-installer/pulls).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
