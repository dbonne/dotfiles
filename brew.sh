#!/usr/bin/env bash
set -x

# This is the setup script for my config. The idea is to be able to run
# this after cloning the repo on a Mac ystem and be up and running very
# quickly.

# ---------------------- local utility functions ---------------------

_have() { type "$1" &>/dev/null; }

# Install some programs
_have brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install some programs
#_have starship || curl -sS https://starship.rs/install.sh | sh
# _have brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# _have nvim || brew install nvim
# _have git || brew install git
# _have lazygit || brew install lazygit
# _have bat || brew install bat
# _have lsd || brew install lsd
# _have fzf || brew install fzf
# _have k9s || brew install k9s
# _have tmux || brew install tmux
# _have code || brew install --cask visual-studio-code
# _have obs || brew install --cask obs
# _have kubecolor || brew install kubecolor/tap/kubecolor

# # _have dive || brew install dive
# _have dotnet || brew install dotnet
# _have earthly || brew install earthly
# _have helm || brew install helm
# # _have hugo || brew install hugo # static site generator written in Go
# # _have jq || brew install jq
# _have kind || brew install kind
# _have kubectl || brew install kubernetes-cli
# _have psql || brew install libpq
# # _have node || brew install node
# _have tree || brew install tree

# brew install --cask amethyst
# brew install --cask flameshot
# #brew install --cask multipass

# brew tap homebrew/cask-fonts
# brew install --cask font-fira-code-nerd-font
# brew install font-monaspace
