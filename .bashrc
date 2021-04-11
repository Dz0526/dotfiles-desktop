#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# GOPATH
export GOPATH=$HOME/.go

# PATH
export PATH=$PATH:$GOPATH

# Git alias
alias g='git'

# set vi mode
set -o vi

eval "$(starship init bash)"

# set thefuck
eval "$(thefuck --alias)"

