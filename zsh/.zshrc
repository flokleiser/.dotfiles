### --- ZSH CONFIG ---

### --- TERMINAL SETUP ---
bindkey -v
bindkey '^?' backward-delete-char 
export KEYTIMEOUT=1

setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

DEFAULT_VI_MODE=viins

export EDITOR=nvim
export TERM=xterm-256color
export PIP_REQUIRE_VIRTUALENV=true

export XDG_CONFIG_HOME="$HOME/.config"
export GOPATH="$HOME/Code/Go/go"
export CARGO_HOME="$HOME/Code/Rust/.cargo"
export RUSTUP_HOME="$HOME/Code/Rust/.rustup"
export GEM_HOME="$HOME/Code/Ruby/.gem"
export PLATFORMIO_CORE_DIR="$HOME/Code/Arduino/.platformio"
export ANDROID_HOME="$HOME/Code/Android/.android"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

export PATH="/opt/homebrew/bin:$HOME/.local/bin:$CARGO_HOME/bin:$GEM_HOME/bin:$(go env GOPATH)/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$PATH"

export LESSHISTFILE=-

export GROFF_NO_SGR=1
export MANROFFOPT="-c"
export MANPAGER='nvim +Man!'

### --- PLUGINS & THEMES ---
export ZSH=$HOME/.zsh
export BAT_THEME="Visual Studio Dark+"

### --- AUTOCOMPLETE ---

autoload -Uz compinit && compinit
source $ZSH/fzf-tab/fzf-tab.plugin.zsh

source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/completion.zsh

bindkey '^I' autosuggest-accept

bindkey "^[[Z" fzf-tab-complete

source $ZSH/completion.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#626262"

### --- USER INPUT PROMPT ---
# PROMPT="%F{241}flo@mac %1~ |%f "
PROMPT="%F{245}flo@mac %1~ |%f "

### --- use nvim instead of vim --- 
alias vim=nvim
alias vi=nvim
alias n="nvim $1"

alias yz=yazi
alias z=zoxide

# --- tmux alias ---
alias tk="tmux kill-server"

# --- bat instead of cat ---
# alias cat="bat"

### --- ncspot/spotify_player alias --- 
alias ncsp='~/Code/Rust/ncspot/target/release/ncspot'
alias sp='~/Code/Rust/spotify-player/target/debug/spotify_player'

### --- ALIASES FOR PATHS ---
alias obsidian="cd /Users/flo/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/Flo"
alias home="cd ~"
alias config="cd ~/.dotfiles"
alias zhdk="cd ~/ZHdK/HS25"
alias hs="cd ~/ZHdK/HS25/SoftArchitecture"
alias ghostty="nvim ~/.dotfiles/ghostty/.config/ghostty/config"
alias x="clear"
alias .="open ."

alias neofetch="fastfetch"

alias code="cd ~/Code/"
alias vscode="/usr/local/bin/code"


export HOMEBREW_AUTO_UPDATE_SECS=604800

eval $(thefuck --alias)
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

### --- LazyGit function ---
function lazygit() {
	git add .
	git commit -a -m "$*"
	git push
}

### --- color and stuff --- 
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:*' fzf-bindings 'tab:accept'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# --- Yazi cd thing

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

### --- DIFFERENT CURSORS FOR VIM MODES ---
# Prevent blinking cursor.
function __set_beam_cursor {
    echo -ne '\e[6 q'
}

function __set_block_cursor {
    echo -ne '\e[2 q'
}

function zle-keymap-select {
  case $KEYMAP in
    vicmd) __set_block_cursor;;
    viins|main) __set_beam_cursor;;
  esac
}
zle -N zle-keymap-select

precmd_functions+=(__set_beam_cursor)
