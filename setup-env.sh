#!/bin/bash

function detect_os() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macOS"
  elif [[ "$OSTYPE" == "linux"* ]]; then
    OS="Linux"
  else
    echo "Unsupported operating system"
    exit 1
  fi
}
# Install packages using Homebrew or apt based on OS
function install_packages() {
  for package in "${packages[@]}"; do
    if [[ "$OS" == "macOS" ]]; then
      brew install "$package"
    elif [[ "$OS" == "Linux" ]]; then
      sudo apt install "$package" -y
    fi
  done
}

# Main script logic
packages=("git" "python3" "bat" "gh" "zsh" "curl" "node" "npm" "ripgrep" "ncdu" "nvim" "kubectl" "k9s" "starship" "alacritty" "tmuxinator")

detect_os

# Update package managers before installation
if [[ "$OS" == "macOS" ]]; then
  brew update && brew upgrade
elif [[ "$OS" == "Linux" ]]; then
  sudo apt update && sudo apt upgrade -y
fi

install_packages 

# Create directories
export XDG_CONFIG_HOME="$HOME"/.config

mkdir -p "$XDG_CONFIG_HOME"/{alacritty,alacritty/themes,k9s,wallpapers}

# Install zsh plugins
plugins=(ohmyzsh zsh-autosuggestions zsh-syntax-highlighting)
for plugin in "${plugins[@]}"; do
  git clone "https://github.com/$(echo "$plugin" | cut -d- -f1-2)/$plugin" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$plugin" || echo "Error installing $plugin"
done


# Install alacritty themes fonts and wallpapers
git clone https://github.com/alacritty/alacritty-theme "$XDG_CONFIG_HOME"/alacritty/themes
mkdir -p $HOME/.local/share/fonts
cp ./fonts/FiraCode* $HOME/.local/share/fonts
cp ./wallpapers/* $XDG_CONFIG_HOME/wallpapers

# Install NvChad
git clone https://github.com/NvChad/starter ~/.config/nvim

# Symbolic links
ln -sf "$PWD/dotfiles/alacritty.toml" "$XDG_CONFIG_HOME"/alacritty/alacritty.toml
ln -sf "$PWD/dotfiles/k9s/skin.yml" "$XDG_CONFIG_HOME"/k9s/skin.yml
ln -sf "$PWD/dotfiles/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/dotfiles/.zshrc" "$HOME"/.zshrc
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim/lua/custom/

chsh -s $(which zsh)

echo "All done!"
