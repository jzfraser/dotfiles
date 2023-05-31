# Jack's config based on Luke Smith's
# Useful aliases
alias ls='ls -G'
alias vim="nvim"
alias chrome="google-chrome-stable"
alias multipull="find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;"

# Modify Path
export PATH="$PATH:/Users/jackfraser/.local/share/nvim/lsp_servers"
export PATH="$PATH:/opt/homebrew/bin" # only enable on macOS
# export PATH="$HOME/.local/share/applications:$PATH" # only enable on manjaro

# NVM settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# NVM auto use version if .nvmrc present
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Ruby Gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# Enable colors and change prompt:
autoload -U colors && colors

# History in cache directory:
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist

# Include hidden files
compinit
_comp_options+=(globdots)

# Case insensitive autocomplete
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

eval "$(starship init zsh)"

# Plugin manager antigen
source "$HOME/.config/zsh/antigen.zsh"

# Suggest aliases for commands
# source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh
antigen bundle MichaelAquilina/zsh-you-should-use

# Search repos for programs that can't be found
# source /usr/share/zsh/plugins/zsh-command-not-found/command-not-found.plugin.zsh 2>/dev/null
antigen bundle command-not-found

# Suggest commands from history
antigen bundle zsh-users/zsh-autosuggestions

# Load zsh-syntax-highlighting; should be last.
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply
