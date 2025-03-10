# ZSH Add

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gnzh"

plugins=(
	git
	zsh-autosuggestions
	npm
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ---

# ENV vars

export LANG=en_US.UTF-8
export PYENV_ROOT="$HOME/.pyenv"
export PATH="/usr/local/cuda-12.8/bin:${PATH}"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# ---

# PyEnv add

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ---

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [[ ./ -ef ~ ]]; then
    cd /home/nia/Desktop
fi

# Aliases

## Directory movements
alias cdc='cd ..'
alias cdb='cd -'
alias cdd='cd ~/Desktop'

## Like vim funcs
alias :q='exit'
alias :bb='systemctl poweroff'
alias :ff='systemctl reboot'

## Explorers
alias c='code . &> /dev/null 2>&1 &'
alias ws="websocat"
alias gg="lazygit"
alias vi='nvim'
alias v='nvim'
alias exp='nautilus . &> /dev/null 2>&1 &'

## Short forms of big stuff
alias xcp='xclip -rmlastnl -sel clip'
alias cls='clear'
alias py='python'
alias upd='sudo apt update -y && sudo apt upgrade -y'
alias perkele="ssh 'root@109.120.151.167'"

## OpenVPN
alias ovpl="openvpn3 sessions-list"
alias ovp="openvpn3 session-start --config ~/.config/openvpn/niatomi-linux.ovpn"
alias ovpc="openvpn3 session-manage --disconnect -c /home/nia/.config/openvpn/niatomi-linux.ovpn"
alias ovpm='openvpn3 session-start --config ~/.config/openvpn/monitor.ovpn'
alias ovpmc="openvpn3 session-manage --disconnect -c ~/.config/openvpn/monitor.ovpn"


alias xpid="xprop _NET_WM_PID | cut -d' ' -f3"

# ---

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
