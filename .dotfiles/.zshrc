# ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gnzh"
plugins=(
	poetry
	git
	zsh-autosuggestions
	npm
	zsh-syntax-highlighting
  zsh-vi-mode
)
source $ZSH/oh-my-zsh.sh

# ZSH Vi mode
export ZVM_SYSTEM_CLIPBOARD_ENABLED=true

# ---

# ENV vars
export LANG=en_US.UTF-8
export PATH="$PYENV_ROOT/bin:$PATH"
export EDITOR="nvim"

# Lang env install
## Rust
. "$HOME/.cargo/env"
# TheFuck
eval $(thefuck --alias f)
## UV
source $HOME/.local/bin/env
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
source $HOME/.server_aliases

## Directory movements
alias cdc='cd ..'
alias cdb='cd -'
alias cdd='cd ~/Desktop'

## Like vim funcs
alias :q='exit'
alias :bb='systemctl poweroff'
alias :ff='systemctl reboot'

## Apps
alias gg="lazygit"
alias vi='nvim'
alias v='nvim'
alias exp='dolphin . &> /dev/null 2>&1 &'
alias anyop="xdg-open"
alias mcdu="ncdu"

## Short forms of big stuff
alias xcp='wl-copy'
alias cls='clear'
alias py='python'
alias upd='sudo pacman -Syu'

alias xpid="xprop _NET_WM_PID | cut -d' ' -f3"

# Oh My Posh
eval "$(oh-my-posh init zsh --config ~/.config/oh_my_posh/microverse-power.omp.json)"

# PyEnv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
eval "$(pyenv virtualenv-init -)"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Move to Dekstop if in ~
if [[ ./ -ef ~ ]]; then
    cd /home/nia/Desktop
fi
. "/home/nia/.deno/env"
