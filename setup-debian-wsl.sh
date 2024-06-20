

# Update the package list and upgrade installed packages
sudo apt update
sudo apt upgrade -y

# Install essential tools and utilities
sudo apt install -y git python3-pip exa unzip bat gh zsh curl wget
curl -sL https://deb.nodesource.com/setup_18.x | bash -
sudo apt install -y nodejs npm

# Set Zsh as the default shell and install oh-my-zsh with powerlevel10k theme
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -y)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Neovim
wget -O nvim-linux-amd64.tar.gz https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz -C /usr/local/share/

# Install RipGrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb

#Install Pretty Ping
curl -O /usr/local/bin/ https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping 

# Install Kubernetes related items
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sudo brew install k9s

# Install Golang
wget -O go1.22.0.linux-amd64.tar.gz https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz

# Install golang utilities
go install -v github.com/incu6us/goimports-reviser/v3@latest
brew install gofumpt

# Install other utilities
sudo apt install ncdu

sudo brew install fzf

# Clean up
sudo apt autoremove -y
sudo apt clean
rm ripgrep_13.0.0_amd64.deb
rm go1.22.0.linux-amd64.tar.gz 
rm nvim-linux-amd64.tar.gz

echo "Setup completed successfully!"

