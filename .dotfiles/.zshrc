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
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
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
alias cdd='cd ~/Desktop'

## Like vim funcs
alias :q='exit'
alias :bb='systemctl poweroff'
alias :ff='systemctl reboot'

## Explorers
alias c='code . &> /dev/null 2>&1 &'
alias vi='nvim'
alias exp='xdg-open . &> /dev/null &'

## Short forms of big stuff
alias cls='clear'
alias py='python'
alias upd='sudo apt update -y && sudo apt upgrade -y'
alias perkele="ssh 'root@whoknows?'"

## OpenVPN
alias ovpl="openvpn3 sessions-list"
alias ovp="openvpn3 session-start --config ~/.config/openvpn/niatomi-linux.ovpn"
alias ovpc="openvpn3 session-manage --disconnect -c /home/nia/.config/openvpn/niatomi-linux.ovpn"
alias ovpm="openvpn3 session-start --config ~/.config/openvpn/niatom.ovpn"
alias ovpmc="openvpn3 session-manage --disconnect -c ~/.config/openvpn/niatom.ovpn"


alias xpid="xprop _NET_WM_PID | cut -d' ' -f3"

# ---
