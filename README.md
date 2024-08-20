# Dotfiles

My configuration files for bash, vim, tmux and so forth.

The intention is to be able to run  a setup script after cloning the repo on a Mac system and be up and running very quickly.

## Setup Notes

```bash
brew install stow
```

## Usage

```bash
stow -t $HOME zshrc
```

```bash
stow -t $HOME tmux
stow -t $HOME git
stow -t $HOME ssh
```