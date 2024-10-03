#!/bin/bash

set -x

# Set up XDG_CONFIG_HOME
export XDG_CONFIG_HOME=$HOME/.config
mkdir -p "$XDG_CONFIG_HOME"

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $CURRENT_DIR

create_directories() {
  local directories=("$@")
  for dir in "${directories[@]}"; do
    mkdir -p "$dir"
  done
}

install_cmd="sudo apt-get install -y "

# Install packages using the command
$install_cmd "${packages[@]}"

common_directories=(
  "$XDG_CONFIG_HOME/nvim"
  "$XDG_CONFIG_HOME/starship"
)

create_directories "${common_directories[@]}"

stow -t $XDG_CONFIG_HOME/nvim nvim
