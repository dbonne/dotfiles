# Only run on macOS

if [ -r ~/.bashrc ]; then
	source ~/.bashrc
fi

export XDG_CONFIG_HOME="$HOME"/.config

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
