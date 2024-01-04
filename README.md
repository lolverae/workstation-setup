# Debian Environment Setup Script for WSL

## Overview

This Bash script automates the setup of a Debian environment on Windows Subsystem for Linux (WSL). It includes various configurations and installations to enhance your development environment.

## Features

- Updates and upgrades the package list and installed packages.
- Installs essential tools and utilities: Git, Python3, Node.js, etc.
- Configures Zsh as the default shell with the powerlevel10k theme.
- Sets up Homebrew package manager.
- Installs Neovim with the NvChad configuration.
- Adds RipGrep for efficient searching.
- Installs Kubernetes-related tools (kubectl and k9s).
- Includes Golang installation.
- Cleans up unnecessary packages and files after installation.

## Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/your-repo.git
   ```
2. **Navigate to the repository:**
   ```bash
   cd your-repo 
   ```
3. **Run the setup script:**
   ```bash
    bash setup-debian-wsl.sh
   ```

## Caution
Ensure you review the script contents before execution, especially if you have specific requirements or existing configurations.
