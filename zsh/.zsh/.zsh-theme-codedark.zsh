# ZSH Syntax Highlighting - Codedark Theme
# Based on https://github.com/tomasiser/vim-code-dark

# Main highlighting colors from codedark theme
typeset -A ZSH_HIGHLIGHT_STYLES

# Reset
ZSH_HIGHLIGHT_STYLES[default]='none'

# Colors extracted from vim-code-dark
# Front: '#D4D4D4' (Light gray - default text color)
# Blue: '#569CD6' (Azure blue - keywords)
# LightBlue: '#9CDCFE' (Light blue - variables)
# Green: '#6A9955' (Medium green - comments)
# BlueGreen: '#4EC9B0' (Teal - types)
# Yellow: '#DCDCAA' (Light yellow - functions)
# Orange: '#CE9178' (Light orange - strings)
# Pink: '#C586C0' (Light purple - control flow)
# LightGreen: '#B5CEA8' (Sage green - numbers)
# Red: '#F44747' (Bright red - errors)

# Common tokens
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#F44747' # cdRed
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#569CD6,bold' # cdBlue bold
ZSH_HIGHLIGHT_STYLES[alias]='fg=#DCDCAA' # cdYellow
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#DCDCAA' # cdYellow
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#4EC9B0' # cdBlueGreen
ZSH_HIGHLIGHT_STYLES[function]='fg=#DCDCAA' # cdYellow
ZSH_HIGHLIGHT_STYLES[command]='fg=#DCDCAA' # cdYellow
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#C586C0,italic' # cdPink italic
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#D4D4D4' # cdFront
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#DCDCAA' # cdYellow

# Paths
ZSH_HIGHLIGHT_STYLES[path]='fg=#9CDCFE,underline' # cdLightBlue underline
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#9CDCFE' # cdLightBlue
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#D7BA7D' # cdYellowOrange

# Patterns and expressions
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#9CDCFE' # cdLightBlue
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#9CDCFE' # cdLightBlue
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#CE9178' # cdOrange
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#CE9178' # cdOrange
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#CE9178' # cdOrange
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#D4D4D4' # cdFront
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-delimiter]='fg=#D4D4D4' # cdFront
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-delimiter]='fg=#D4D4D4' # cdFront

# Parameters and operators
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#CE9178' # cdOrange
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#9CDCFE' # cdLightBlue
ZSH_HIGHLIGHT_STYLES[assign]='fg=#D4D4D4' # cdFront
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#B5CEA8' # cdLightGreen
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#B5CEA8' # cdLightGreen
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#569CD6' # cdBlue
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#DCDCAA' # cdYellow

# Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#6A9955' # cdGreen

# Additional styles
ZSH_HIGHLIGHT_STYLES[cursor]='standout'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#C586C0' # cdPink
