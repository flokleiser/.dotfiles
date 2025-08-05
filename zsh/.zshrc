### --- ZSH CONFIG ---

### --- TERMINAL SETUP ---
bindkey -v
bindkey '^?' backward-delete-char #this fixes the backspace for some reason
export KEYTIMEOUT=1

DEFAULT_VI_MODE=viins

# export EDITOR=vim
export EDITOR=nvim
# export TERM=screen-256color
export TERM=xterm-256color
export PIP_REQUIRE_VIRTUALENV=true

export XDG_CONFIG_HOME="$HOME/.config"
export PATH="/opt/homebrew/bin:$HOME/.local/bin:$PATH:$(go env GOPATH)/bin"

export LESSHISTFILE=-

export GROFF_NO_SGR=1
export MANROFFOPT="-c"
export MANPAGER="/usr/bin/less -R --use-color -Ddg -Du+y"

### --- PLUGINS & THEMES ---
export ZSH=$HOME/.zsh
export BAT_THEME="Visual Studio Dark+"

### --- AUTOCOMPLETE ---

source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit && compinit

bindkey '^I' autosuggest-accept
# bindkey '\033[1;2C' expand-or-complete #opt+shift+l
bindkey -M viins '^[[25~' expand-or-complete #opt+tab, mapped in karabiner elements to f13
bindkey -M vicmd '^[[25~' expand-or-complete #opt+tab, mapped in karabiner elements to f13

bindkey -M viins "^[[1;2P" expand-or-complete #dumb fix for tmux not receiving the correct esc sequence
bindkey -M vicmd "^[[1;2P" expand-or-complete

bindkey -M viins "^[[Z" expand-or-complete #shift+tab for ghostty
bindkey -M vicmd "^[[Z" expand-or-complete 

source $ZSH/completion.zsh

# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#777777'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#626262"

### --- USER INPUT PROMPT ---
PROMPT="%F{241}flo@mac %1~ |%f "

### --- use nvim instead of vim --- 
alias vim=nvim
alias vi=nvim
alias n="nvim $1"

alias yz=yazi

# --- tmux alias ---
alias tk="tmux kill-server"

# --- bat instead of cat ---
# alias cat="bat"

### --- ncspot/spotify_player alias --- 
alias ncsp='~/Code/ncspot/target/release/ncspot'
# alias sp='spotify_player'
alias sp='~/Code/spotify-player/target/debug/spotify_player'

### --- ALIASES FOR PATHS ---
alias obsidian="cd /Users/flo/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/Flo"
alias home="cd ~"
alias config="cd ~/.dotfiles"
alias dot="cd ~/.dotfiles"

export HOMEBREW_AUTO_UPDATE_SECS=604800

lf() {
    (command lf "$@")
    clear
}

lfcd() {
	local tmp="$(mktemp)"
	lf -last-dir-path="$tmp" "$@"
	if [[ -f "$tmp" ]] && [[ -r "$tmp" ]]; then
	cd -- "$(cat "$tmp")"
	fi
	rm -f "$tmp"
}

eval $(thefuck --alias)

### --- LazyGit function ---
function lazygit() {
	git add .
	git commit -a -m "$*"
	git push
}

# --- Yazi cd thing

function yy() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

### --- DIFFERENT CURSORS FOR VIM MODES ---
# function zle-keymap-select {
# 	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
# 		echo -ne '\e[1 q'
# 	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
# 		echo -ne '\e[5 q'
# 		fi
# 	}
# 	zle -N zle-keymap-select

# echo -ne '\e[5 q'

# preexec() {
# 	echo -ne '\e[5 q'
# }

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

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
