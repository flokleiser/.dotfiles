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
# export XDG_CONFIG_HOME="$HOME/Temp/yazi-config/"
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

export PLATFORMIO_CORE_DIR="$HOME/Code/Arduino-PlatformIO/PlatformIO"

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
bindkey '^[1;9Z' fzf-tab-complete

source $ZSH/completion.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#626262"

### --- USER INPUT PROMPT ---
# PROMPT="%F{241}flo@mac %1~ |%f "
PROMPT="%F{245}flo@mac %1~ |%f "

### --- use nvim instead of vim --- 
alias vim=nvim
alias vi=nvim
alias n="nvim $1"

# alias yz=yazi

alias yz='~/Code/Rust/yazi/target/release/yazi'
# alias y='~/Code/Rust/yazi/target/release/yazi'


alias lf=yazi
alias z=zoxide
alias ff=fastfetch

# --- tmux alias ---
alias tk="tmux kill-server"

# --- bat instead of cat ---
# alias cat="bat"

### --- ncspot/spotify_player alias --- 
alias ncsp='~/Code/Rust/ncspot/target/release/ncspot'
alias sp='~/Code/Rust/spotify-player/target/debug/spotify_player'
# alias sp='spotify_player'
alias f='fuck'
alias temp="cd ~/Temp"


### --- ALIASES FOR PATHS ---
# alias obsidian="cd /Users/flo/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/Flo/02-Freetime/2-Areas)"

alias obsidian="cd /Users/flo/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/Flo"
alias home="cd ~"
alias config="cd ~/.dotfiles"
alias zhdk="cd ~/ZHdK/FS26"
# alias hs="cd ~/ZHdK/FS26/SpacialInteraction/"
alias hs="cd ~/ZHdK/FS26/"
alias ghostty="nvim ~/.dotfiles/ghostty/.config/ghostty/config"
alias cl="clear"
alias .="open ."
# alias lg="lazygit"

# alias neofetch="fastfetch"

alias code="cd ~/Code/"
alias vscode="/usr/local/bin/code"

export HOMEBREW_AUTO_UPDATE_SECS=604800

eval $(thefuck --alias)
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

### --- LazyGit function ---
function lg() {
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

# function y() {
#     local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
#     yazi "$@" --cwd-file="$tmp"
#     if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
#         cd -- "$cwd"
#     fi
#     rm -f -- "$tmp"
# }

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    ~/Code/Rust/Yazi/target/release/yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

# --- reverse i search
bindkey "^R" history-incremental-search-backward
bindkey "^B" history-incremental-search-backward
# bindkey "^B" history-incremental-search-backward
# bindkey "^H" history-incremental-search-backward


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
