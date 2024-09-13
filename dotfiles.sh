#!/usr/bin/env bash
set -x

VERSION=0.1.0-dev
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $CURRENT_DIR

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
