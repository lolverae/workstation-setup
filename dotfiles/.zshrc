export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/usr/local/go/bin:/home/linuxbrew/.linuxbrew/bin

# Plugins
plugins=(git colorize zsh-autosuggestions vi-mode zsh-syntax-highlighting aliases golang)

bindkey -v
KEYTIMEOUT=1

source $ZSH/oh-my-zsh.sh

# Aliases
alias cat='/usr/bin/batcat'
alias c='clear'
alias ls='exa --icons'
alias l='exa --all --long'
alias t='exa --tree'
alias grep='rg'
alias 'dus=du -sckxh * | sort -nr'
alias godoc='$HOME/go/bin/godoc'

# Kubernetes Aliases
alias k="kubectl"
alias h="helm"
alias kdp='kubectl describe pod'
alias ke='kubectl explain'
alias ks='kubectl get namespaces'
alias kgp='kubectl get pod'

# OpenTofu
alias tfp="tofu plan"
alias tfv="tofu validate"
alias tfa="tofu apply"

eval "$(starship init zsh)"

