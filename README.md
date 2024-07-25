# Personal Environment Setup Script

## Overview

This script automates the installation and configuration of essential tools for
a productive developer environment on macOS or Linux.

## Features

- Determines the operating system (macOS or Linux).
- Installs packages using either Homebrew (macOS) or apt (Linux).
- Creates necessary configuration directories for alacritty, k9s, wallpapers,
  and Neovim.
- Installs zsh plugins for enhanced functionality.
- Downloads and sets up alacritty themes, fonts, and wallpapers.
- Installs a starter configuration for Neovim.
- Creates symbolic links to configuration files in the dotfiles directory.

## Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/lolverae/workstation-setup.git
   ```

2. **Navigate to the repository:**
   ```bash
   cd workstation-setup
   ```
3. **Run the setup script:**
   ```bash
   bash setup-env.sh
   ```

## Caution

Ensure you review the script contents before execution, especially if you have
specific requirements or existing configurations.
