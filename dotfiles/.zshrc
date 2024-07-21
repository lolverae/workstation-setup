if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/usr/local/go/bin:/home/linuxbrew/.linuxbrew/bin

ZSH_THEME="powerlevel10k/powerlevel10k"

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
alias python='python3'
alias nvim='/home/alberto/nvim-linux64/bin/nvim'
alias godoc='$HOME/go/bin/godoc'

# Kubernetes Aliases
alias k="kubectl"
alias h="helm"
alias kdp='kubectl describe pod'
alias ke='kubectl explain'
alias ks='kubectl get namespaces'
alias kgp='kubectl get pod'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


