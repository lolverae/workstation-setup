#!/bin/bash

# Create directories
export XDG_CONFIG_HOME="$HOME"/.config

mkdir -p "$XDG_CONFIG_HOME"/alacritty
mkdir -p "$XDG_CONFIG_HOME"/alacritty/themes
mkdir -p "$XDG_CONFIG_HOME"/k9s

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Update Homebrew and upgrade installed packages
brew update
brew upgrade

# Install tools and utilities
brew install git python3 exa bat gh zsh curl node npm ripgrep ncdu nvim kubectl k9s starship alacritty tmuxinator

# Set Zsh as the default shell and install oh-my-zsh 
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/alacritty/alacritty-theme "$XDG_CONFIG_HOME"/alacritty/themes

mkdir -p $HOME/.local/share/fonts
cp ./fonts/Firacode* $HOME/.local/share/fonts

# Symbolic links
ln -sf "$PWD/alacritty.toml" "$XDG_CONFIG_HOME"/alacritty/alacritty.toml
ln -sf "$PWD/k9s/skin.yml" "$XDG_CONFIG_HOME"/k9s/skin.yml
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim/lua/custom/

# Clean up
brew cleanup

echo "Setup completed successfully!"

