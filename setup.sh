#!/bin/bash

# Set up XDG_CONFIG_HOME
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $CURRENT_DIR

create_directories() {
  local directories=("$@")
  for dir in "${directories[@]}"; do
    mkdir -p "$dir"
  done
}

packages=(
  stow
  fd
  ripgrep
  npm
  lazygit
  fzf
)

# Iterate over the array and install each package
for package in "${packages[@]}"; do
  echo "Installing $package..."
  if [[ "$(uname)" == "Darwin" ]]; then # "You are on a macOS system."
    brew install "$package"
  else # You are not on a macOS system.
    sudo apt install -y "$package"
  fi
done

common_directories=(
  "$XDG_CONFIG_HOME/nvim"
  "$XDG_CONFIG_HOME/starship"
)

create_directories "${common_directories[@]}"

# restore dotfiles
stow -t "$HOME" git
stow -t "$HOME" gnupg
stow -t "$HOME" ssh
stow -t "$HOME" tmux

stow -t "$XDG_CONFIG_HOME/starship" starship
stow -t "$XDG_CONFIG_HOME/nvim" nvim

if [[ "$(uname)" == "Darwin" ]]; then
  echo "You are on a macOS system."
  stow -t "$HOME" zshrc
else
  echo "You are not on a macOS system."
  stow -t "$HOME" bashrc
fi
