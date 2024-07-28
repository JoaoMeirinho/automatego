
# Go Project Template Automation

## Overview

This project provides a simple automation script to create a Go project with a standard directory structure, essential files, and initial setup. The script automates the process of initializing a Go module, creating common directories, and setting up configuration files like `.env`, `.gitignore`, and a basic `docker-compose.yml`.

## Features

- **Automated Go Module Initialization**: Automatically initializes a new Go module using the provided project name.
- **Standard Directory Structure**: Creates common directories such as `controllers`, `models`, `services`, etc.
- **Basic Go Application**: Sets up a basic `main.go` file with a "Hello World" program.
- **Configuration Files**: Automatically generates `.gitignore`, `.env`, and `docker-compose.yml` with basic configurations.

## Directory Structure

The script creates the following directory structure:

```
<project_name>/
├── controllers/
├── database/
├── dto/
├── interfaces/
├── models/
├── repositories/
├── routes/
├── services/
├── test/
├── main.go
├── docker-compose.yml
├── .gitignore
└── .env
```

## How to Use

1. **Clone or Download the Repository**: Get the script from the repository to your local machine.

2. **Run the Script**:
   - **Windows**: 
     - Open Command Prompt.
     - Navigate to the directory where the script is located.
     - Execute the script with:
       ```cmd
       automatego <ProjectName>
       ```

3. **Project Initialization**: The script will create a new directory with the specified project name, set up the Go module, and create the directory structure and files.

## Prerequisites

- **Go**: Ensure that Go is installed and properly configured on your system. You can download it from [Go's official website](https://golang.org/dl/).
- **Docker**: Required if you intend to use the `docker-compose.yml` setup. [Download Docker](https://www.docker.com/products/docker-desktop).

## Setting Up Environment Variables

To run the script without specifying the extension and to use a shorter command, follow these steps:

1. **Place the Script in a Directory**:
   - Place `automatego.bat` in a directory of your choice (e.g., `C:\scripts`).

2. **Add the Directory to the System PATH**:
   - Open the Start Menu and search for "Environment Variables".
   - Select "Edit the system environment variables".
   - In the System Properties window, click on the "Environment Variables" button.
   - In the Environment Variables window, find the "Path" variable in the "System variables" section and select it.
   - Click on "Edit" and then "New".
   - Add the path to the directory where `automatego.bat` is located (e.g., `C:\scripts`).
   - Click "OK" to close all windows.

Now, you can simply open a Command Prompt and type:

```cmd
automatego <ProjectName>
```

to run the script without needing to specify the `.bat` extension.

## Customization

Feel free to modify the generated files and directory structure according to your project's needs. The script serves as a template to get you started quickly.

## Contributing

If you have any suggestions or improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to the Go community for their great documentation and support.

