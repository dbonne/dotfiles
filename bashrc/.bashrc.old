#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '

# Set to superior editing mode
#set -o vi

# ---------------------- local utility functions ---------------------

_have() { type "$1" &>/dev/null; }

# ----------------------

if [[ "$OSTYPE" == "darwin"* ]]; then
	# needed for brew
	_have /opt/homebrew/bin/brew && eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~

# config
export VISUAL=nvim
export EDITOR=nvim

# directories
export GIT_CU_DIR="$HOME/Work/Development/code"
export GITUSER="dbonne"
export GHREPOS="$GIT_CU_DIR/github.com/$GITUSER"
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

[[ -r ~/.fzf.bash ]] && source ~/.fzf.bash
[[ -r ~/.bash_aliases ]] && source ~/.bash_aliases

# sourcing
source "$HOME/.privaterc"

# brew bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

_have starship && eval "$(starship init bash)"

PATH=~/.console-ninja/.bin:$PATH
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
