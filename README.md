# homelab


This script includes:

1. Error handling: Error messages are displayed with meaningful descriptions, and the script exits when an error occurs.
2. Check for root privileges: The script checks if it's being run with root privileges and exits if not.
3. Check for internet connectivity: The script checks for internet connectivity before attempting to download files.
4. Modularization: Functions are used for different installation tasks, improving readability and maintainability.
5. Command availability check: Before attempting to install Docker and Docker Compose, the script checks if they are already installed.
6. Installation functions: Separate functions are provided for installing Docker, Docker Compose, NGINX Proxy Manager, and other applications. This makes it easy to add or modify installation steps for each application.
7. Main function: The main function orchestrates the entire installation process.
8. Clearer output: Messages are displayed to indicate the progress of each installation step.

You can add installation steps for other applications inside the `install_other_apps` function. Make sure to replace the placeholder comments with actual installation commands for each application.
