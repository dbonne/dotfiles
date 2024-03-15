# utility functions
generate_password() {
	if [[ $# -ne 1 ]]; then
		echo "Usage: generate_password <length>"
		return 1
	fi

	local length="$1"
	pwgen -s $length 1
}

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
alias repos="cd $GIT_CU_DIR"
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
_have kubectl && source <(kubectl completion bash)
_have kubectl && complete -F __start_kubectl k

# env variables
export VISUAL=nvim
export EDITOR=nvim

# fzf aliases
# use fp to do a fzf search and preview the files
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# search for a file with `fzf and open it in vim
alias vf='v $(fp)'

alias generate_password_easy="pwgen -s 8 1"
alias generate_password_medium="pwgen -s 12 1"
alias generate_password_hard="pwgen -s 16 1"
alias generate_password_variable="generate_password"
