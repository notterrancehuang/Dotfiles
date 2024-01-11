# Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Command execution time stamp in history
HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

source $ZSH/oh-my-zsh.sh

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
alias school="cd ~/RIT"
alias dl="cd ~/Downloads"

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# broot
alias br="br -h"

# shutdown or reboot
alias ssn="sudo shutdown -h now"
alias sr="sudo shutdown -r now"

source $HOME/.config/broot/launcher/bash/br

# Changing "ls" to "eza"
alias ls='eza -al --color=always --group-directories-first' # my preferred listing
alias l='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT --color=always --group-directories-first' # tree listing
alias l.='eza -a | egrep "^\."'

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
# 'status' is protected name so using 'stat' instead
alias stat='git status'  
alias tag='git tag'
alias newtag='git tag -a'

# clearing clipboard
alias ccb='pbcopy < /dev/null'

# getting PID
alias pidof='ps axc | grep -i'

# homebrew no auto update
export HOMEBREW_NO_AUTO_UPDATE=1

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

# make directory and cd to that directory
mkcd()
{
    mkdir -p -- "$1" &&
        cd -P -- "$1"
}

# tar compress and decompress
targz()
{
    tar -czvf $1.tar.gz $1;
    rm -rf $1
}

untargz()
{
    tar -xzvf $1;
    rm -rf $1
}

# Vim mode for terminal
bindkey -v

# powerlevel10k
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# add doom to path
export PATH=”$HOME/.emacs.d/bin:$PATH”

source /Users/terrancehuang/.config/broot/launcher/bash/br

# set default install location to local Applications folder
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"

# Load Angular CLI autocompletion.
source <(ng completion script)
