#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '

# Set to superior editing mode
#set -o vi

# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~

# config
export VISUAL=nvim
export EDITOR=nvim

# directories
export REPOS="$HOME/Work/Development/code"
export GITUSER="dbonne"
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export SCRIPTS="$DOTFILES/scripts"
export SECOND_BRAIN="$HOME/Work/garden"

# Go related. In general all executables and scripts go in .local/bin
export GOBIN="$HOME/.local/bin"
export GOPRIVATE="github.com/$GITUSER/*,gitlab.com/$GITUSER/*"
# export GOPATH="$HOME/.local/share/go"
export GOPATH="$HOME/go/"

# dotnet
export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec"

PATH="${PATH:+${PATH}:}"$SCRIPTS":/opt/homebrew/opt/dotnet/bin:"$HOME"/.local/bin:"$HOME"/.dotnet/tools" # appending

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

alias v=nvim
# alias vim=nvim

# cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias scripts="cd $SCRIPTS"
alias cdblog="cd $HOME/websites/blog"
alias dot="cd $GHREPOS/dotfiles"
alias cdpblog="cd $SECOND_BRAIN/2-areas/blog/content"
alias lab="cd $LAB"
alias repos="cd $REPOS"
alias cdgo="cd $GHREPOS/go/"
alias c="clear"

# git
alias gp='git pull'
alias gs='git status'
alias lg='lazygit'

# ls
alias ls='lsd --color=auto --group-directories-first'
alias l='ls'
alias ll='ls -l'
alias la='ls -lathr'

# finds all files recursively and sorts by last modification, ignore hidden files
alias last='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

alias t='tmux'
alias e='exit'

# git
alias gp='git pull'
alias gs='git status'
alias lg='lazygit'

# ricing
alias eb='v ~/.bashrc'
alias sbr='source ~/.bashrc'

# kubectl
alias k='kubectl'
source <(kubectl completion bash)
complete -o default -F __start_kubectl k

# env variables
export VISUAL=nvim
export EDITOR=nvim

# fzf aliases
# use fp to do a fzf search and preview the files
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# search for a file with `fzf and open it in vim
alias vf='v $(fp)'

[[ -r ~/.fzf.bash ]] && source ~/.fzf.bash

# sourcing
source "$HOME/.privaterc"

# brew bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

eval "$(starship init bash)"
