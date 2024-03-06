# Only run on macOS

if [[ "$OSTYPE" == "darwin"* ]]; then
  # needed for brew
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ -r ~/.bashrc ]; then
  source ~/.bashrc
fi

export XDG_CONFIG_HOME="$HOME"/.config

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
