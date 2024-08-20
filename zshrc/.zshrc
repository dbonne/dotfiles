setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000

export VISUAL=nvim
export EDITOR=nvim

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload bashcompinit && bashcompinit
  autoload -Uz compinit
  compinit
fi

eval "$(starship init zsh)"

source ~/.aliases
[ -s "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if type kind &>/dev/null; then
  source <(kind completion zsh)
fi
if type kubectl &>/dev/null; then
  source <(kubectl completion zsh)
fi
if type docker &>/dev/null; then
  source <(docker completion zsh)
fi
if type fzf &>/dev/null; then
  eval "$(fzf --zsh)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Work/Google/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/Work/Google/google-cloud-sdk/path.zsh.inc"; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec"
export PATH="$PATH:$HOME/.dotnet/tools"

export GIT_CU_DIR=$HOME/Work/Development/code
export PATH=$HOME/Library/Python/3.9/bin:$PATH
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

function portk-oracle-free { knock -d 300 150.136.45.132 8283:tcp 1482:udp 5283:tcp 1817:tcp; ssh -o TCPKeepAlive=yes -o ServerAliveInterval=15 oracle-free; }

PATH=~/.console-ninja/.bin:$PATH
PATH=$HOME/.bun/bin:$PATH
PATH=$HOME/.pub-cache/bin:$PATH

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
