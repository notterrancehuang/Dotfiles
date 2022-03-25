#  _____ _   _
# |_   _| | | | Terrance Huang
#   | | | |_| |
#   | | |  _  |
#   |_| |_| |_|
# My zsh config


######################################################################
# => Oh My Zsh
######################################################################

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Command execution time stamp in history
HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

source $ZSH/oh-my-zsh.sh

#############################################################################
# => zshrc
#############################################################################

# vim
alias vim='nvim'
export EDITOR='nvim'

alias doas="doas --"

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .4="cd ../../../../.."

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# broot
alias br="br -h"

# shutdown or reboot
alias ssn="sudo shutdown -h now"
alias sr="sudo shutdown -r now"

source ~/.config/broot/launcher/bash/br

# Terminal Rick Roll
alias rr="curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'  # 'status' is protected name so using 'stat' instead
alias tag='git tag'
alias newtag='git tag -a'

# C++
alias g++='g++ -std=c++17'

# vifm change directory when quitting
vicd()
{
    local dst="$(command vifm --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
}

# Vim mode for terminal
bindkey -v
