### --- ZSH CONFIG ---
### --- ZSH CONFIG ---
### --- ZSH CONFIG ---

### --- TERMINAL SETUP ---
bindkey -v
bindkey '^?' backward-delete-char #this fixes the backspace for some reason
export KEYTIMEOUT=1

DEFAULT_VI_MODE=viins

export EDITOR=vim
export TERM=screen-256color
export PIP_REQUIRE_VIRTUALENV=true

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

### --- ALIASES FOR PATHS ---
alias obsidian="cd /Users/flo/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents"
alias home="cd ~"
alias config="cd ~/.dotfiles"
alias mca="cd /Users/flo/Documents/curseforge/minecraft/Instances/Flo\ 1.21.4/mca/zulu21.32.17-ca-fx-jre21.0.2-macosx_aarch64"
alias mcaselector="/Users/flo/Documents/curseforge/minecraft/Instances/Flo\ 1.21.4/mca/zulu21.32.17-ca-fx-jre21.0.2-macosx_aarch64/zulu-21.jre/Contents/Home/bin/java -jar /Users/flo/Documents/curseforge/minecraft/Instances/Flo\ 1.21.4/mca/mcaselector-2.4.2.jar" 

export HOMEBREW_AUTO_UPDATE_SECS=604800

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

### --- DIFFERENT CURSORS FOR VIM MODES ---
function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
		fi
	}
	zle -N zle-keymap-select

echo -ne '\e[5 q'

preexec() {
	echo -ne '\e[5 q'
}
