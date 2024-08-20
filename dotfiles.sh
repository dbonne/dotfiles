#!/usr/bin/env bash
set -x

# Set dotfiles directory
export STOW_DIR="$HOME"/Work/Development/code/github.com/dbonne/dotfiles

# restore dotfiles
# stow -t "$HOME" alacritty
stow -t "$HOME" git
stow -t "$HOME" gnupg 
# stow -t "$HOME" inputrc
stow -t "$HOME" ssh
stow -t "$HOME" starship
stow -t "$HOME" tmux

if [[ "$(uname)" == "Darwin" ]]; then
    echo "You are on a macOS system."
	stow -t "$HOME" zshrc
else
    echo "You are not on a macOS system."
	stow -t "$HOME" bashrc
fi
