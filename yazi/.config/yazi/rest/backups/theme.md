"$schema" = "https://yazi-rs.github.io/schemas/theme.json"

# vim:fileencoding=utf-8:foldmethod=marker

[flavor]
dark  = "vscode-dark-modern"
# dark  = "vscode-light-plus"
light = ""

# [indicator]
# padding = { open = "█", close = "█" }

[mgr]
cwd = { fg = "white" }

hovered         = { fg="white", bg="black",reversed = true}
preview_hovered = { underline = false}

find_keyword  = { fg = "yellow", bold = true, italic = true, underline = true }
find_position = { fg = "magenta", bg = "lightcyan", bold = true, italic = true }

# symlink_target = { fg= "#555555", bg = "reset", italic = true }
symlink_target = { italic = true }

marker_copied   = { fg = "lightgreen",  bg = "lightgreen" }
marker_cut      = { fg = "lightred",    bg = "lightred" }
marker_marked   = { fg = "lightcyan",   bg = "lightcyan" }
marker_selected = { fg = "lightyellow", bg = "lightyellow" }

# Count
count_copied   = { fg = "white", bg = "green" }
count_cut      = { fg = "white", bg = "red" }
count_selected = { fg = "white", bg = "yellow" }

# Border
border_symbol = "│"
# border_style  = { fg = "gray" }
border_style  = { fg = "white" }

[which]
cols            = 3
mask            = { bg = "reset" }
cand            = { fg = "lightcyan" }
rest            = { fg = "darkgray" }
desc            = { fg = "lightmagenta" }
separator       = "   "
# separator_style = { fg = "darkgray" }
separator_style = { fg = "lightcyan" }

# : }}}

[tabs]
active   = { fg="black",bg = "white", bold = true }
inactive = { fg = "white", bg = "reset", bold = true  }

# Separator
sep_inner = { open = "", close = "" }
sep_outer = { open = "", close = "" }


# : Confirmation {{{

[confirm]
border     = { fg = "blue" }
title      = { fg = "blue" }
content    = {}
list       = {}
btn_yes    = { reversed = true }
btn_no     = {}
btn_labels = [ "  [Y]es  ", "  (N)o  " ]

# : }}}


# : Spotter {{{

[spot]
border = { fg = "blue" }
title  = { fg = "blue" }

# Table
tbl_col  = { fg = "blue" }
tbl_cell = { fg = "yellow", reversed = true }

# : }}}


# : Notification {{{

[notify]
title_info  = { fg = "green" }
title_warn  = { fg = "yellow" }
title_error = { fg = "red" }

# Icons
icon_info  = ""
icon_warn  = ""
icon_error = ""

# : }}}


# : Picker {{{

[pick]
border   = { fg = "blue" }
active   = { fg = "magenta", bold = true }
inactive = {}

# : }}}


# : Input {{{

[input]
border   = { fg = "blue" }
title    = {}
value    = {}
selected = { reversed = true }

# : }}}


# : Completion {{{

[cmp]
border   = { fg = "blue" }
active   = { reversed = true }
inactive = {}
# Icons

# icon_file    = ""
icon_file    = ""
# icon_folder  = ""
icon_folder  = ""
icon_command = ""

# : }}}


# : Task manager {{{

[tasks]
border  = { fg = "blue" }
title   = {}
hovered = { fg = "magenta", underline = true }

# : }}}


# : Help menu {{{

[help]
on      = { fg = "cyan" }
run     = { fg = "magenta" }
desc    = {}
hovered = { reversed = true, bold = true }
footer  = { fg = "black", bg = "white" }

# : }}}


# : File-specific styles {{{

[filetype]
rules = [
	# Images
	{ mime = "image/*", fg = "yellow" },

	# Media
	{ mime = "{audio,video}/*", fg = "magenta" },

	# Archives
	{ mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}", fg = "green"},

	# Documents
	{ mime = "application/{pdf,doc,rtf}", fg = "cyan" },

	# Dummy files
	{ name = "*", is = "dummy", bg = "red" },
	{ name = "*/", is = "dummy", bg = "red" },

	# Fallback
	# { name = "*", fg = "white" },
	{ name = "*/", fg = "blue" }
]

[icon]
globs = []
# dirs  = [
# 	{ name = ".dotfiles", text = "" },
# 	{ name = ".git", text = "" },
# 	{ name = ".github", text = "" },
# 	{ name = ".npm", text = "" },
# 	{ name = "Desktop", text = "" },
# 	{ name = "Code", text = "" },
# 	{ name = "Documents", text = "" },
# 	{ name = "Downloads", text = "" },
# 	{ name = "Library", text = "" },
# 	{ name = "Movies", text = "" },
# 	{ name = "Music", text = "" },
# 	{ name = "Pictures", text = "" },
# 	{ name = "Public", text = "" },
# 	{ name = "Videos", text = "" },
#     { name = "Temp", text = ""},
#     { name = "Applications", text = "󰀻"},
# ]
dirs  = [
	{ name = ".dotfiles",   text = "󱂀", fg="#71c6b1"},
	{ name = "Desktop",     text = "󱂶", fg="#71c6b1"},
	{ name = "Code",        text = "󰴊", fg="#71c6b1"},
	{ name = "Documents",   text = "󱧷", fg="#71c6b1"},
	{ name = "Downloads",   text = "󱃩", fg="#71c6b1"},
	{ name = "Library",     text = "󰲃", fg="#71c6b1"},
	{ name = "Movies",      text = "󱧻", fg="#71c6b1"},
	{ name = "Music",       text = "󱍚", fg="#71c6b1"},
	{ name = "Pictures",    text = "󱞋", fg="#71c6b1"},
	{ name = "Flo",         text = "󰮟", fg="#71c6b1"},
	{ name = "Public",      text = "󰮜", fg="#71c6b1"},
	{ name = "Videos",      text = "󱧻", fg="#71c6b1"},
    { name = "Temp",        text = "󰉖", fg="#71c6b1"},
    { name = "Applications",text = "󱋤", fg="#71c6b1"},
    { name = "ZHdK",        text = "󰷎", fg="#71c6b1"},
]

files = [
	{ name = ".babelrc", text = "", fg = "#74985c" },
	{ name = ".bash_profile", text = "", fg = "#74985c" },
	{ name = ".bashrc", text = "", fg = "#74985c" },
	{ name = ".clang-format", text = "", fg = "#cc8bd2" },
	{ name = ".clang-tidy", text = "", fg = "#cc8bd2" },
	{ name = ".codespellrc", text = "󰓆", fg = "#74985c" },
	{ name = ".condarc", text = "", fg = "#74985c" },
	{ name = ".dockerignore", text = "󰡨", fg = "#99d5fb" },
	{ name = ".ds_store", text = "", fg = "#252627" },
	{ name = ".editorconfig", text = "", fg = "#dbdbdb" },
	{ name = ".env", text = "", fg = "#74985c" },
	{ name = ".eslintignore", text = "", fg = "#cc8bd2" },
	{ name = ".eslintrc", text = "", fg = "#cc8bd2" },
	{ name = ".git-blame-ignore-revs", text = "", fg = "#e1554f" },
	{ name = ".gitattributes", text = "", fg = "#e1554f" },
	{ name = ".gitconfig", text = "", fg = "#e1554f" },
	{ name = ".gitignore", text = "", fg = "#e1554f" },
	{ name = ".gitlab-ci.yml", text = "", fg = "#e1554f" },
	{ name = ".gitmodules", text = "", fg = "#e1554f" },
	{ name = ".gtkrc-2.0", text = "", fg = "#dbdbdb" },
	{ name = ".gvimrc", text = "", fg = "#74985c" },
	{ name = ".justfile", text = "", fg = "#cc8bd2" },
	{ name = ".luacheckrc", text = "", fg = "#99d5fb" },
	{ name = ".luaurc", text = "", fg = "#99d5fb" },
	{ name = ".mailmap", text = "󰊢", fg = "#e1554f" },
	{ name = ".nanorc", text = "", fg = "#15191e" },
	{ name = ".npmignore", text = "", fg = "#e1554f" },
	{ name = ".npmrc", text = "", fg = "#e1554f" },
	{ name = ".nuxtrc", text = "󱄆", fg = "#71c6b1" },
	{ name = ".nvmrc", text = "", fg = "#74985c" },
	{ name = ".pre-commit-config.yaml", text = "󰛢", fg = "#c5947c" },
	{ name = ".prettierignore", text = "", fg = "#99d5fb" },
	{ name = ".prettierrc", text = "", fg = "#99d5fb" },
	{ name = ".prettierrc.cjs", text = "", fg = "#99d5fb" },
	{ name = ".prettierrc.js", text = "", fg = "#99d5fb" },
	{ name = ".prettierrc.json", text = "", fg = "#99d5fb" },
	{ name = ".prettierrc.json5", text = "", fg = "#99d5fb" },
	{ name = ".prettierrc.mjs", text = "", fg = "#99d5fb" },
	{ name = ".prettierrc.toml", text = "", fg = "#99d5fb" },
	{ name = ".prettierrc.yaml", text = "", fg = "#99d5fb" },
	{ name = ".prettierrc.yml", text = "", fg = "#99d5fb" },
	{ name = ".pylintrc", text = "", fg = "#cc8bd2" },
	{ name = ".settings.json", text = "", fg = "#cc8bd2" },
	{ name = ".SRCINFO", text = "󰣇", fg = "#99d5fb" },
	{ name = ".vimrc", text = "", fg = "#74985c" },
	{ name = ".Xauthority", text = "", fg = "#e1554f" },
	{ name = ".xinitrc", text = "", fg = "#e1554f" },
	{ name = ".Xresources", text = "", fg = "#e1554f" },
	{ name = ".xsession", text = "", fg = "#e1554f" },
	{ name = ".zprofile", text = "", fg = "#74985c" },
	{ name = ".zshenv", text = "", fg = "#74985c" },
	{ name = ".zshrc", text = "", fg = "#74985c" },
	{ name = "_gvimrc", text = "", fg = "#74985c" },
	{ name = "_vimrc", text = "", fg = "#74985c" },
	{ name = "AUTHORS", text = "", fg = "#cc8bd2" },
	{ name = "AUTHORS.txt", text = "", fg = "#cc8bd2" },
	{ name = "brewfile", text = "", fg = "#e1554f" },
	{ name = "bspwmrc", text = "", fg = "#252627" },
	{ name = "build", text = "", fg = "#74985c" },
	{ name = "build.gradle", text = "", fg = "#15191e" },
	{ name = "build.zig.zon", text = "", fg = "#c5947c" },
	{ name = "bun.lock", text = "", fg = "#dbdbdb" },
	{ name = "bun.lockb", text = "", fg = "#dbdbdb" },
	{ name = "cantorrc", text = "", fg = "#99d5fb" },
	{ name = "checkhealth", text = "󰓙", fg = "#99d5fb" },
	{ name = "cmakelists.txt", text = "", fg = "#dbdbdb" },
	{ name = "code_of_conduct", text = "", fg = "#e1554f" },
	{ name = "code_of_conduct.md", text = "", fg = "#e1554f" },
	{ name = "commit_editmsg", text = "", fg = "#e1554f" },
	{ name = "commitlint.config.js", text = "󰜘", fg = "#71c6b1" },
	{ name = "commitlint.config.ts", text = "󰜘", fg = "#71c6b1" },
	{ name = "compose.yaml", text = "󰡨", fg = "#99d5fb" },
	{ name = "compose.yml", text = "󰡨", fg = "#99d5fb" },
	{ name = "config", text = "", fg = "#cc8bd2" },
	{ name = "containerfile", text = "󰡨", fg = "#99d5fb" },
	{ name = "copying", text = "", fg = "#74985c" },
	{ name = "copying.lesser", text = "", fg = "#74985c" },
	{ name = "Directory.Build.props", text = "", fg = "#99d5fb" },
	{ name = "Directory.Build.targets", text = "", fg = "#99d5fb" },
	{ name = "Directory.Packages.props", text = "", fg = "#99d5fb" },
	{ name = "docker-compose.yaml", text = "󰡨", fg = "#99d5fb" },
	{ name = "docker-compose.yml", text = "󰡨", fg = "#99d5fb" },
	{ name = "dockerfile", text = "󰡨", fg = "#99d5fb" },
	{ name = "eslint.config.cjs", text = "", fg = "#cc8bd2" },
	{ name = "eslint.config.js", text = "", fg = "#cc8bd2" },
	{ name = "eslint.config.mjs", text = "", fg = "#cc8bd2" },
	{ name = "eslint.config.ts", text = "", fg = "#cc8bd2" },
	{ name = "ext_typoscript_setup.txt", text = "", fg = "#c5947c" },
	{ name = "favicon.ico", text = "", fg = "#74985c" },
	{ name = "fp-info-cache", text = "", fg = "#dbdbdb" },
	{ name = "fp-lib-table", text = "", fg = "#dbdbdb" },
	{ name = "FreeCAD.conf", text = "", fg = "#e1554f" },
	{ name = "Gemfile", text = "", fg = "#e1554f" },
	{ name = "gnumakefile", text = "", fg = "#cc8bd2" },
	{ name = "go.mod", text = "", fg = "#99d5fb" },
	{ name = "go.sum", text = "", fg = "#99d5fb" },
	{ name = "go.work", text = "", fg = "#99d5fb" },
	{ name = "gradle-wrapper.properties", text = "", fg = "#15191e" },
	{ name = "gradle.properties", text = "", fg = "#15191e" },
	{ name = "gradlew", text = "", fg = "#15191e" },
	{ name = "groovy", text = "", fg = "#252627" },
	{ name = "gruntfile.babel.js", text = "", fg = "#c5947c" },
	{ name = "gruntfile.coffee", text = "", fg = "#c5947c" },
	{ name = "gruntfile.js", text = "", fg = "#c5947c" },
	{ name = "gruntfile.ts", text = "", fg = "#c5947c" },
	{ name = "gtkrc", text = "", fg = "#dbdbdb" },
	{ name = "gulpfile.babel.js", text = "", fg = "#e1554f" },
	{ name = "gulpfile.coffee", text = "", fg = "#e1554f" },
	{ name = "gulpfile.js", text = "", fg = "#e1554f" },
	{ name = "gulpfile.ts", text = "", fg = "#e1554f" },
	{ name = "hypridle.conf", text = "", fg = "#71c6b1" },
	{ name = "hyprland.conf", text = "", fg = "#71c6b1" },
	{ name = "hyprlandd.conf", text = "", fg = "#71c6b1" },
	{ name = "hyprlock.conf", text = "", fg = "#71c6b1" },
	{ name = "hyprpaper.conf", text = "", fg = "#71c6b1" },
	{ name = "i18n.config.js", text = "󰗊", fg = "#99d5fb" },
	{ name = "i18n.config.ts", text = "󰗊", fg = "#99d5fb" },
	{ name = "i3blocks.conf", text = "", fg = "#dbdbdb" },
	{ name = "i3status.conf", text = "", fg = "#dbdbdb" },
	{ name = "index.theme", text = "", fg = "#74985c" },
	{ name = "ionic.config.json", text = "", fg = "#99d5fb" },
	{ name = "justfile", text = "", fg = "#cc8bd2" },
	{ name = "kalgebrarc", text = "", fg = "#99d5fb" },
	{ name = "kdeglobals", text = "", fg = "#99d5fb" },
	{ name = "kdenlive-layoutsrc", text = "", fg = "#99d5fb" },
	{ name = "kdenliverc", text = "", fg = "#99d5fb" },
	{ name = "kritadisplayrc", text = "", fg = "#cc8bd2" },
	{ name = "kritarc", text = "", fg = "#cc8bd2" },
	{ name = "license", text = "", fg = "#74985c" },
	{ name = "license.md", text = "", fg = "#74985c" },
	{ name = "lxde-rc.xml", text = "", fg = "#d4d4d4" },
	{ name = "lxqt.conf", text = "", fg = "#99d5fb" },
	{ name = "makefile", text = "", fg = "#cc8bd2" },
	{ name = "mix.lock", text = "", fg = "#cc8bd2" },
	{ name = "mpv.conf", text = "", fg = "#15191e" },
	{ name = "next.config.cjs", text = "", fg = "#dbdbdb" },
	{ name = "next.config.js", text = "", fg = "#dbdbdb" },
	{ name = "next.config.ts", text = "", fg = "#dbdbdb" },
	{ name = "node_modules", text = "", fg = "#e1554f" },
	{ name = "nuxt.config.cjs", text = "󱄆", fg = "#71c6b1" },
	{ name = "nuxt.config.js", text = "󱄆", fg = "#71c6b1" },
	{ name = "nuxt.config.mjs", text = "󱄆", fg = "#71c6b1" },
	{ name = "nuxt.config.ts", text = "󱄆", fg = "#71c6b1" },
	{ name = "package-lock.json", text = "", fg = "#e1554f" },
	{ name = "package.json", text = "", fg = "#e1554f" },
	{ name = "PKGBUILD", text = "", fg = "#99d5fb" },
	{ name = "platformio.ini", text = "", fg = "#c5947c" },
	{ name = "pom.xml", text = "", fg = "#e1554f" },
	{ name = "prettier.config.cjs", text = "", fg = "#99d5fb" },
	{ name = "prettier.config.js", text = "", fg = "#99d5fb" },
	{ name = "prettier.config.mjs", text = "", fg = "#99d5fb" },
	{ name = "prettier.config.ts", text = "", fg = "#99d5fb" },
	{ name = "procfile", text = "", fg = "#cc8bd2" },
	{ name = "PrusaSlicer.ini", text = "", fg = "#e1554f" },
	{ name = "PrusaSlicerGcodeViewer.ini", text = "", fg = "#e1554f" },
	{ name = "py.typed", text = "", fg = "#c5947c" },
	{ name = "QtProject.conf", text = "", fg = "#74985c" },
	{ name = "rakefile", text = "", fg = "#e1554f" },
	{ name = "readme", text = "󰂺", fg = "#dbdbdb" },
	{ name = "readme.md", text = "󰂺", fg = "#dbdbdb" },
	{ name = "rmd", text = "", fg = "#99d5fb" },
	{ name = "robots.txt", text = "󰚩", fg = "#99d5fb" },
	{ name = "security", text = "󰒃", fg = "#d4d4d4" },
	{ name = "security.md", text = "󰒃", fg = "#d4d4d4" },
	{ name = "settings.gradle", text = "", fg = "#15191e" },
	{ name = "svelte.config.js", text = "", fg = "#e1554f" },
	{ name = "sxhkdrc", text = "", fg = "#252627" },
	{ name = "sym-lib-table", text = "", fg = "#dbdbdb" },
	{ name = "tailwind.config.js", text = "󱏿", fg = "#99d5fb" },
	{ name = "tailwind.config.mjs", text = "󱏿", fg = "#99d5fb" },
	{ name = "tailwind.config.ts", text = "󱏿", fg = "#99d5fb" },
	{ name = "tmux.conf", text = "", fg = "#74985c" },
	{ name = "tmux.conf.local", text = "", fg = "#74985c" },
	{ name = "tsconfig.json", text = "", fg = "#99d5fb" },
	{ name = "unlicense", text = "", fg = "#74985c" },
	{ name = "vagrantfile", text = "", fg = "#99d5fb" },
	{ name = "vercel.json", text = "", fg = "#dbdbdb" },
	{ name = "vlcrc", text = "󰕼", fg = "#c5947c" },
	{ name = "webpack", text = "󰜫", fg = "#99d5fb" },
	{ name = "weston.ini", text = "", fg = "#c5947c" },
	{ name = "workspace", text = "", fg = "#74985c" },
	{ name = "wrangler.jsonc", text = "", fg = "#c5947c" },
	{ name = "wrangler.toml", text = "", fg = "#c5947c" },
	{ name = "xmobarrc", text = "", fg = "#e1554f" },
	{ name = "xmobarrc.hs", text = "", fg = "#e1554f" },
	{ name = "xmonad.hs", text = "", fg = "#e1554f" },
	{ name = "xorg.conf", text = "", fg = "#e1554f" },
	{ name = "xsettingsd.conf", text = "", fg = "#e1554f" },
]
exts = [
	{ name = "3gp", text = "", fg = "#c5947c" },
	{ name = "3mf", text = "󰆧", fg = "#d4d4d4" },
	{ name = "7z", text = "", fg = "#c5947c" },
	{ name = "a", text = "", fg = "#dbdbdb" },
	{ name = "aac", text = "", fg = "#99d5fb" },
	{ name = "ada", text = "", fg = "#99d5fb" },
	{ name = "adb", text = "", fg = "#99d5fb" },
	{ name = "ads", text = "", fg = "#cc8bd2" },
	{ name = "ai", text = "", fg = "#74985c" },
	{ name = "aif", text = "", fg = "#99d5fb" },
	{ name = "aiff", text = "", fg = "#99d5fb" },
	{ name = "android", text = "", fg = "#74985c" },
	{ name = "ape", text = "", fg = "#99d5fb" },
	{ name = "apk", text = "", fg = "#74985c" },
	{ name = "apl", text = "", fg = "#74985c" },
	{ name = "app", text = "", fg = "#e1554f" },
	{ name = "applescript", text = "", fg = "#cc8bd2" },
	{ name = "asc", text = "󰦝", fg = "#252627" },
	{ name = "asm", text = "", fg = "#99d5fb" },
	{ name = "ass", text = "󰨖", fg = "#c5947c" },
	{ name = "astro", text = "", fg = "#e1554f" },
	{ name = "avif", text = "", fg = "#cc8bd2" },
	{ name = "awk", text = "", fg = "#252627" },
	{ name = "azcli", text = "", fg = "#99d5fb" },
	{ name = "bak", text = "󰁯", fg = "#cc8bd2" },
	{ name = "bash", text = "", fg = "#74985c" },
	{ name = "bat", text = "", fg = "#74985c" },
	{ name = "bazel", text = "", fg = "#74985c" },
	{ name = "bib", text = "󱉟", fg = "#74985c" },
	{ name = "bicep", text = "", fg = "#99d5fb" },
	{ name = "bicepparam", text = "", fg = "#cc8bd2" },
	{ name = "bin", text = "", fg = "#e1554f" },
	{ name = "blade.php", text = "", fg = "#e1554f" },
	{ name = "blend", text = "󰂫", fg = "#c5947c" },
	{ name = "blp", text = "󰺾", fg = "#99d5fb" },
	{ name = "bmp", text = "", fg = "#cc8bd2" },
	{ name = "bqn", text = "", fg = "#74985c" },
	{ name = "brep", text = "󰻫", fg = "#74985c" },
	{ name = "bz", text = "", fg = "#c5947c" },
	{ name = "bz2", text = "", fg = "#c5947c" },
	{ name = "bz3", text = "", fg = "#c5947c" },
	{ name = "bzl", text = "", fg = "#74985c" },
	{ name = "c", text = "", fg = "#99d5fb" },
	{ name = "c++", text = "", fg = "#e1554f" },
	{ name = "cache", text = "", fg = "#dbdbdb" },
	{ name = "cast", text = "", fg = "#c5947c" },
	{ name = "cbl", text = "", fg = "#99d5fb" },
	{ name = "cc", text = "", fg = "#e1554f" },
	{ name = "ccm", text = "", fg = "#e1554f" },
	{ name = "cfc", text = "", fg = "#99d5fb" },
	{ name = "cfg", text = "", fg = "#cc8bd2" },
	{ name = "cfm", text = "", fg = "#99d5fb" },
	{ name = "cjs", text = "", fg = "#74985c" },
	{ name = "clj", text = "", fg = "#74985c" },
	{ name = "cljc", text = "", fg = "#74985c" },
	{ name = "cljd", text = "", fg = "#99d5fb" },
	{ name = "cljs", text = "", fg = "#99d5fb" },
	{ name = "cmake", text = "", fg = "#dbdbdb" },
	{ name = "cob", text = "", fg = "#99d5fb" },
	{ name = "cobol", text = "", fg = "#99d5fb" },
	{ name = "coffee", text = "", fg = "#74985c" },
	{ name = "conda", text = "", fg = "#74985c" },
	{ name = "conf", text = "", fg = "#cc8bd2" },
	{ name = "config.ru", text = "", fg = "#e1554f" },
	{ name = "cow", text = "󰆚", fg = "#c5947c" },
	{ name = "cp", text = "", fg = "#99d5fb" },
	{ name = "cpp", text = "", fg = "#99d5fb" },
	{ name = "cppm", text = "", fg = "#99d5fb" },
	{ name = "cpy", text = "", fg = "#99d5fb" },
	{ name = "cr", text = "", fg = "#d4d4d4" },
	{ name = "crdownload", text = "", fg = "#71c6b1" },
	{ name = "cs", text = "󰌛", fg = "#74985c" },
	{ name = "csh", text = "", fg = "#252627" },
	{ name = "cshtml", text = "󱦗", fg = "#cc8bd2" },
	{ name = "cson", text = "", fg = "#74985c" },
	{ name = "csproj", text = "󰪮", fg = "#cc8bd2" },
	{ name = "css", text = "", fg = "#cc8bd2" },
	{ name = "csv", text = "", fg = "#74985c" },
	{ name = "cts", text = "", fg = "#99d5fb" },
	{ name = "cu", text = "", fg = "#74985c" },
	{ name = "cue", text = "󰲹", fg = "#cc8bd2" },
	{ name = "cuh", text = "", fg = "#cc8bd2" },
	{ name = "cxx", text = "", fg = "#99d5fb" },
	{ name = "cxxm", text = "", fg = "#99d5fb" },
	{ name = "d", text = "", fg = "#e1554f" },
	{ name = "d.ts", text = "", fg = "#c5947c" },
	{ name = "dart", text = "", fg = "#15191e" },
	{ name = "db", text = "", fg = "#dbdbdb" },
	{ name = "dconf", text = "", fg = "#dbdbdb" },
	{ name = "desktop", text = "", fg = "#15191e" },
	{ name = "diff", text = "", fg = "#252627" },
	{ name = "dll", text = "", fg = "#252627" },
	{ name = "doc", text = "󰈬", fg = "#99d5fb" },
	{ name = "Dockerfile", text = "󰡨", fg = "#99d5fb" },
	{ name = "dockerignore", text = "󰡨", fg = "#99d5fb" },
	{ name = "docx", text = "󰈬", fg = "#99d5fb" },
	{ name = "dot", text = "󱁉", fg = "#15191e" },
	{ name = "download", text = "", fg = "#71c6b1" },
	{ name = "drl", text = "", fg = "#c5947c" },
	{ name = "dropbox", text = "", fg = "#99d5fb" },
	{ name = "dump", text = "", fg = "#dbdbdb" },
	{ name = "dwg", text = "󰻫", fg = "#74985c" },
	{ name = "dxf", text = "󰻫", fg = "#74985c" },
	{ name = "ebook", text = "", fg = "#c5947c" },
	{ name = "ebuild", text = "", fg = "#15191e" },
	{ name = "edn", text = "", fg = "#99d5fb" },
	{ name = "eex", text = "", fg = "#cc8bd2" },
	{ name = "ejs", text = "", fg = "#74985c" },
	{ name = "el", text = "", fg = "#cc8bd2" },
	{ name = "elc", text = "", fg = "#cc8bd2" },
	{ name = "elf", text = "", fg = "#e1554f" },
	{ name = "elm", text = "", fg = "#99d5fb" },
	{ name = "eln", text = "", fg = "#cc8bd2" },
	{ name = "env", text = "", fg = "#74985c" },
	{ name = "eot", text = "", fg = "#dbdbdb" },
	{ name = "epp", text = "", fg = "#c5947c" },
	{ name = "epub", text = "", fg = "#c5947c" },
	{ name = "erb", text = "", fg = "#e1554f" },
	{ name = "erl", text = "", fg = "#cc8bd2" },
	{ name = "ex", text = "", fg = "#cc8bd2" },
	{ name = "exe", text = "", fg = "#e1554f" },
	{ name = "exs", text = "", fg = "#cc8bd2" },
	{ name = "f#", text = "", fg = "#99d5fb" },
	{ name = "f3d", text = "󰻫", fg = "#74985c" },
	{ name = "f90", text = "󱈚", fg = "#cc8bd2" },
	{ name = "fbx", text = "󰆧", fg = "#d4d4d4" },
	{ name = "fcbak", text = "", fg = "#e1554f" },
	{ name = "fcmacro", text = "", fg = "#e1554f" },
	{ name = "fcmat", text = "", fg = "#e1554f" },
	{ name = "fcparam", text = "", fg = "#e1554f" },
	{ name = "fcscript", text = "", fg = "#e1554f" },
	{ name = "fcstd", text = "", fg = "#e1554f" },
	{ name = "fcstd1", text = "", fg = "#e1554f" },
	{ name = "fctb", text = "", fg = "#e1554f" },
	{ name = "fctl", text = "", fg = "#e1554f" },
	{ name = "fdmdownload", text = "", fg = "#71c6b1" },
	{ name = "feature", text = "", fg = "#74985c" },
	{ name = "fish", text = "", fg = "#252627" },
	{ name = "flac", text = "", fg = "#99d5fb" },
	{ name = "flc", text = "", fg = "#dbdbdb" },
	{ name = "flf", text = "", fg = "#dbdbdb" },
	{ name = "fnl", text = "", fg = "#dbdbdb" },
	{ name = "fodg", text = "", fg = "#74985c" },
	{ name = "fodp", text = "", fg = "#c5947c" },
	{ name = "fods", text = "", fg = "#74985c" },
	{ name = "fodt", text = "", fg = "#99d5fb" },
	{ name = "fs", text = "", fg = "#99d5fb" },
	{ name = "fsi", text = "", fg = "#99d5fb" },
	{ name = "fsscript", text = "", fg = "#99d5fb" },
	{ name = "fsx", text = "", fg = "#99d5fb" },
	{ name = "gcode", text = "󰐫", fg = "#99d5fb" },
	{ name = "gd", text = "", fg = "#cc8bd2" },
	{ name = "gemspec", text = "", fg = "#e1554f" },
	{ name = "gif", text = "", fg = "#cc8bd2" },
	{ name = "git", text = "", fg = "#e1554f" },
	{ name = "glb", text = "", fg = "#c5947c" },
	{ name = "gleam", text = "", fg = "#cc8bd2" },
	{ name = "gnumakefile", text = "", fg = "#cc8bd2" },
	{ name = "go", text = "", fg = "#99d5fb" },
	{ name = "godot", text = "", fg = "#cc8bd2" },
	{ name = "gpr", text = "", fg = "#cc8bd2" },
	{ name = "gql", text = "", fg = "#cc8bd2" },
	{ name = "gradle", text = "", fg = "#15191e" },
	{ name = "graphql", text = "", fg = "#cc8bd2" },
	{ name = "gresource", text = "", fg = "#dbdbdb" },
	{ name = "gv", text = "󱁉", fg = "#15191e" },
	{ name = "gz", text = "", fg = "#c5947c" },
	{ name = "h", text = "", fg = "#cc8bd2" },
	{ name = "haml", text = "", fg = "#dbdbdb" },
	{ name = "hbs", text = "", fg = "#e1554f" },
	{ name = "heex", text = "", fg = "#cc8bd2" },
	{ name = "hex", text = "", fg = "#99d5fb" },
	{ name = "hh", text = "", fg = "#cc8bd2" },
	{ name = "hpp", text = "", fg = "#cc8bd2" },
	{ name = "hrl", text = "", fg = "#cc8bd2" },
	{ name = "hs", text = "", fg = "#cc8bd2" },
	{ name = "htm", text = "", fg = "#e1554f" },
	{ name = "html", text = "", fg = "#e1554f" },
	{ name = "http", text = "", fg = "#99d5fb" },
	{ name = "huff", text = "󰡘", fg = "#cc8bd2" },
	{ name = "hurl", text = "", fg = "#e1554f" },
	{ name = "hx", text = "", fg = "#c5947c" },
	{ name = "hxx", text = "", fg = "#cc8bd2" },
	{ name = "ical", text = "", fg = "#15191e" },
	{ name = "icalendar", text = "", fg = "#15191e" },
	{ name = "ico", text = "", fg = "#74985c" },
	{ name = "ics", text = "", fg = "#15191e" },
	{ name = "ifb", text = "", fg = "#15191e" },
	{ name = "ifc", text = "󰻫", fg = "#74985c" },
	{ name = "ige", text = "󰻫", fg = "#74985c" },
	{ name = "iges", text = "󰻫", fg = "#74985c" },
	{ name = "igs", text = "󰻫", fg = "#74985c" },
	{ name = "image", text = "", fg = "#d4d4d4" },
	{ name = "img", text = "", fg = "#d4d4d4" },
	{ name = "import", text = "", fg = "#dbdbdb" },
	{ name = "info", text = "", fg = "#74985c" },
	{ name = "ini", text = "", fg = "#cc8bd2" },
	{ name = "ino", text = "", fg = "#71c6b1" },
	{ name = "ipynb", text = "", fg = "#c5947c" },
	{ name = "iso", text = "", fg = "#d4d4d4" },
	{ name = "ixx", text = "", fg = "#99d5fb" },
	{ name = "jar", text = "", fg = "#c5947c" },
	{ name = "java", text = "", fg = "#e1554f" },
	{ name = "jl", text = "", fg = "#cc8bd2" },
	{ name = "jpeg", text = "", fg = "#cc8bd2" },
	{ name = "jpg", text = "", fg = "#cc8bd2" },
	{ name = "js", text = "", fg = "#74985c" },
	{ name = "glsl", text = "󰆧", fg = "#99d5fb" },
	{ name = "frag", text = "󰆧", fg = "#99d5fb" },
	{ name = "vert", text = "󰆧", fg = "#99d5fb" },
	{ name = "json", text = "", fg = "#74985c" },
	{ name = "json5", text = "", fg = "#74985c" },
	{ name = "jsonc", text = "", fg = "#74985c" },
	{ name = "jsx", text = "", fg = "#99d5fb" },
	{ name = "jwmrc", text = "", fg = "#99d5fb" },
	{ name = "jxl", text = "", fg = "#cc8bd2" },
	{ name = "kbx", text = "󰯄", fg = "#252627" },
	{ name = "kdb", text = "", fg = "#74985c" },
	{ name = "kdbx", text = "", fg = "#74985c" },
	{ name = "kdenlive", text = "", fg = "#99d5fb" },
	{ name = "kdenlivetitle", text = "", fg = "#99d5fb" },
	{ name = "kicad_dru", text = "", fg = "#dbdbdb" },
	{ name = "kicad_mod", text = "", fg = "#dbdbdb" },
	{ name = "kicad_pcb", text = "", fg = "#dbdbdb" },
	{ name = "kicad_prl", text = "", fg = "#dbdbdb" },
	{ name = "kicad_pro", text = "", fg = "#dbdbdb" },
	{ name = "kicad_sch", text = "", fg = "#dbdbdb" },
	{ name = "kicad_sym", text = "", fg = "#dbdbdb" },
	{ name = "kicad_wks", text = "", fg = "#dbdbdb" },
	{ name = "ko", text = "", fg = "#dbdbdb" },
	{ name = "kpp", text = "", fg = "#cc8bd2" },
	{ name = "kra", text = "", fg = "#cc8bd2" },
	{ name = "krz", text = "", fg = "#cc8bd2" },
	{ name = "ksh", text = "", fg = "#252627" },
	{ name = "kt", text = "", fg = "#cc8bd2" },
	{ name = "kts", text = "", fg = "#cc8bd2" },
	{ name = "lck", text = "", fg = "#d4d4d4" },
	{ name = "leex", text = "", fg = "#cc8bd2" },
	{ name = "less", text = "", fg = "#15191e" },
	{ name = "lff", text = "", fg = "#dbdbdb" },
	{ name = "lhs", text = "", fg = "#cc8bd2" },
	{ name = "lib", text = "", fg = "#252627" },
	{ name = "license", text = "", fg = "#74985c" },
	{ name = "liquid", text = "", fg = "#74985c" },
	{ name = "lock", text = "", fg = "#d4d4d4" },
	{ name = "log", text = "󰌱", fg = "#dbdbdb" },
	{ name = "lrc", text = "󰨖", fg = "#c5947c" },
	{ name = "lua", text = "", fg = "#99d5fb" },
	{ name = "luac", text = "", fg = "#99d5fb" },
	{ name = "luau", text = "", fg = "#99d5fb" },
	{ name = "m", text = "", fg = "#99d5fb" },
	{ name = "m3u", text = "󰲹", fg = "#cc8bd2" },
	{ name = "m3u8", text = "󰲹", fg = "#cc8bd2" },
	{ name = "m4a", text = "", fg = "#99d5fb" },
	{ name = "m4v", text = "", fg = "#c5947c" },
	{ name = "magnet", text = "", fg = "#e1554f" },
	{ name = "makefile", text = "", fg = "#cc8bd2" },
	{ name = "markdown", text = "", fg = "#dbdbdb" },
	{ name = "material", text = "", fg = "#cc8bd2" },
	{ name = "md", text = "", fg = "#dbdbdb" },
	{ name = "md5", text = "󰕥", fg = "#cc8bd2" },
	{ name = "mdx", text = "", fg = "#99d5fb" },
	{ name = "mint", text = "󰌪", fg = "#71c6b1" },
	{ name = "mjs", text = "", fg = "#74985c" },
	{ name = "mk", text = "", fg = "#cc8bd2" },
	{ name = "mkv", text = "", fg = "#c5947c" },
	{ name = "ml", text = "", fg = "#e1554f" },
	{ name = "mli", text = "", fg = "#e1554f" },
	{ name = "mm", text = "", fg = "#99d5fb" },
	{ name = "mo", text = "", fg = "#cc8bd2" },
	{ name = "mobi", text = "", fg = "#c5947c" },
	{ name = "mojo", text = "", fg = "#e1554f" },
	{ name = "mov", text = "", fg = "#c5947c" },
	{ name = "mp3", text = "", fg = "#99d5fb" },
	{ name = "mp4", text = "", fg = "#c5947c" },
	{ name = "mpp", text = "", fg = "#99d5fb" },
	{ name = "msf", text = "", fg = "#99d5fb" },
	{ name = "mts", text = "", fg = "#99d5fb" },
	{ name = "mustache", text = "", fg = "#e1554f" },
	{ name = "nfo", text = "", fg = "#74985c" },
	{ name = "nim", text = "", fg = "#74985c" },
	{ name = "nix", text = "", fg = "#99d5fb" },
	{ name = "norg", text = "", fg = "#99d5fb" },
	{ name = "nswag", text = "", fg = "#74985c" },
	{ name = "nu", text = "", fg = "#74985c" },
	{ name = "o", text = "", fg = "#e1554f" },
	{ name = "obj", text = "󰆧", fg = "#d4d4d4" },
	{ name = "odf", text = "", fg = "#e1554f" },
	{ name = "odg", text = "", fg = "#74985c" },
	{ name = "odin", text = "󰟢", fg = "#99d5fb" },
	{ name = "odp", text = "", fg = "#c5947c" },
	{ name = "ods", text = "", fg = "#74985c" },
	{ name = "odt", text = "", fg = "#99d5fb" },
	{ name = "oga", text = "", fg = "#99d5fb" },
	{ name = "ogg", text = "", fg = "#99d5fb" },
	{ name = "ogv", text = "", fg = "#c5947c" },
	{ name = "ogx", text = "", fg = "#c5947c" },
	{ name = "opus", text = "", fg = "#99d5fb" },
	{ name = "org", text = "", fg = "#71c6b1" },
	{ name = "otf", text = "", fg = "#dbdbdb" },
	{ name = "out", text = "", fg = "#e1554f" },
	{ name = "part", text = "", fg = "#71c6b1" },
	{ name = "patch", text = "", fg = "#252627" },
	{ name = "pck", text = "", fg = "#cc8bd2" },
	{ name = "pcm", text = "", fg = "#99d5fb" },
	{ name = "pdf", text = "", fg = "#e1554f" },
	{ name = "php", text = "", fg = "#cc8bd2" },
	{ name = "pl", text = "", fg = "#99d5fb" },
	{ name = "pls", text = "󰲹", fg = "#cc8bd2" },
	{ name = "ply", text = "󰆧", fg = "#d4d4d4" },
	{ name = "pm", text = "", fg = "#99d5fb" },
	# { name = "png", text = "", fg = "#cc8bd2" },
	{ name = "png", text = "", fg = "#cc8bd2" },
	{ name = "po", text = "", fg = "#99d5fb" },
	{ name = "pot", text = "", fg = "#99d5fb" },
	{ name = "pp", text = "", fg = "#c5947c" },
	{ name = "ppt", text = "󰈧", fg = "#e1554f" },
	{ name = "pptx", text = "󰈧", fg = "#e1554f" },
	{ name = "prisma", text = "", fg = "#99d5fb" },
	{ name = "pro", text = "", fg = "#c5947c" },
	{ name = "ps1", text = "󰨊", fg = "#99d5fb" },
	{ name = "psb", text = "", fg = "#99d5fb" },
	{ name = "psd", text = "", fg = "#99d5fb" },
	{ name = "psd1", text = "󰨊", fg = "#cc8bd2" },
	{ name = "psm1", text = "󰨊", fg = "#cc8bd2" },
	{ name = "pub", text = "󰷖", fg = "#c5947c" },
	{ name = "pxd", text = "", fg = "#99d5fb" },
	{ name = "pxi", text = "", fg = "#99d5fb" },
	{ name = "py", text = "", fg = "#c5947c" },
	{ name = "pyc", text = "", fg = "#c5947c" },
	{ name = "pyd", text = "", fg = "#c5947c" },
	{ name = "pyi", text = "", fg = "#c5947c" },
	{ name = "pyo", text = "", fg = "#c5947c" },
	{ name = "pyw", text = "", fg = "#99d5fb" },
	{ name = "pyx", text = "", fg = "#99d5fb" },
	{ name = "qm", text = "", fg = "#99d5fb" },
	{ name = "qml", text = "", fg = "#74985c" },
	{ name = "qrc", text = "", fg = "#74985c" },
	{ name = "qss", text = "", fg = "#74985c" },
	{ name = "query", text = "", fg = "#74985c" },
	{ name = "R", text = "󰟔", fg = "#99d5fb" },
	{ name = "r", text = "󰟔", fg = "#99d5fb" },
	{ name = "rake", text = "", fg = "#e1554f" },
	{ name = "rar", text = "", fg = "#c5947c" },
	{ name = "rasi", text = "", fg = "#74985c" },
	{ name = "razor", text = "󱦘", fg = "#cc8bd2" },
	{ name = "rb", text = "", fg = "#e1554f" },
	{ name = "res", text = "", fg = "#e1554f" },
	{ name = "resi", text = "", fg = "#e1554f" },
	{ name = "rlib", text = "", fg = "#c5947c" },
	{ name = "rmd", text = "", fg = "#99d5fb" },
	{ name = "rproj", text = "󰗆", fg = "#74985c" },
	{ name = "rs", text = "", fg = "#c5947c" },
	{ name = "rss", text = "", fg = "#c5947c" },
	{ name = "s", text = "", fg = "#99d5fb" },
	{ name = "sass", text = "", fg = "#e1554f" },
	{ name = "sbt", text = "", fg = "#e1554f" },
	{ name = "sc", text = "", fg = "#e1554f" },
	{ name = "scad", text = "", fg = "#74985c" },
	{ name = "scala", text = "", fg = "#e1554f" },
	{ name = "scm", text = "󰘧", fg = "#dbdbdb" },
	{ name = "scss", text = "", fg = "#e1554f" },
	# { name = "sh", text = "", fg = "#252627" },
	{ name = "sh", text = "", fg = "#dbdbdb" },
	{ name = "sha1", text = "󰕥", fg = "#cc8bd2" },
	{ name = "sha224", text = "󰕥", fg = "#cc8bd2" },
	{ name = "sha256", text = "󰕥", fg = "#cc8bd2" },
	{ name = "sha384", text = "󰕥", fg = "#cc8bd2" },
	{ name = "sha512", text = "󰕥", fg = "#cc8bd2" },
	{ name = "sig", text = "󰘧", fg = "#e1554f" },
	{ name = "signature", text = "󰘧", fg = "#e1554f" },
	{ name = "skp", text = "󰻫", fg = "#74985c" },
	{ name = "sldasm", text = "󰻫", fg = "#74985c" },
	{ name = "sldprt", text = "󰻫", fg = "#74985c" },
	{ name = "slim", text = "", fg = "#e1554f" },
	{ name = "sln", text = "", fg = "#cc8bd2" },
	{ name = "slnx", text = "", fg = "#cc8bd2" },
	{ name = "slvs", text = "󰻫", fg = "#74985c" },
	{ name = "sml", text = "󰘧", fg = "#e1554f" },
	{ name = "so", text = "", fg = "#dbdbdb" },
	{ name = "sol", text = "", fg = "#99d5fb" },
	{ name = "spec.js", text = "", fg = "#74985c" },
	{ name = "spec.jsx", text = "", fg = "#99d5fb" },
	{ name = "spec.ts", text = "", fg = "#99d5fb" },
	{ name = "spec.tsx", text = "", fg = "#99d5fb" },
	{ name = "spx", text = "", fg = "#99d5fb" },
	{ name = "sql", text = "", fg = "#dbdbdb" },
	{ name = "sqlite", text = "", fg = "#dbdbdb" },
	{ name = "sqlite3", text = "", fg = "#dbdbdb" },
	{ name = "srt", text = "󰨖", fg = "#c5947c" },
	{ name = "ssa", text = "󰨖", fg = "#c5947c" },
	{ name = "ste", text = "󰻫", fg = "#74985c" },
	{ name = "step", text = "󰻫", fg = "#74985c" },
	{ name = "stl", text = "󰆧", fg = "#d4d4d4" },
	{ name = "stories.js", text = "", fg = "#e1554f" },
	{ name = "stories.jsx", text = "", fg = "#e1554f" },
	{ name = "stories.mjs", text = "", fg = "#e1554f" },
	{ name = "stories.svelte", text = "", fg = "#e1554f" },
	{ name = "stories.ts", text = "", fg = "#e1554f" },
	{ name = "stories.tsx", text = "", fg = "#e1554f" },
	{ name = "stories.vue", text = "", fg = "#e1554f" },
	{ name = "stp", text = "󰻫", fg = "#74985c" },
	{ name = "strings", text = "", fg = "#99d5fb" },
	{ name = "styl", text = "", fg = "#74985c" },
	{ name = "sub", text = "󰨖", fg = "#c5947c" },
	{ name = "sublime", text = "", fg = "#e1554f" },
	{ name = "suo", text = "", fg = "#cc8bd2" },
	{ name = "sv", text = "󰍛", fg = "#74985c" },
	{ name = "svelte", text = "", fg = "#e1554f" },
	{ name = "svg", text = "󰜡", fg = "#c5947c" },
	{ name = "svgz", text = "󰜡", fg = "#c5947c" },
	{ name = "svh", text = "󰍛", fg = "#74985c" },
	{ name = "swift", text = "", fg = "#e1554f" },
	{ name = "t", text = "", fg = "#99d5fb" },
	{ name = "tbc", text = "󰛓", fg = "#99d5fb" },
	{ name = "tcl", text = "󰛓", fg = "#99d5fb" },
	{ name = "templ", text = "", fg = "#74985c" },
	{ name = "terminal", text = "", fg = "#74985c" },
	{ name = "test.js", text = "", fg = "#74985c" },
	{ name = "test.jsx", text = "", fg = "#99d5fb" },
	{ name = "test.ts", text = "", fg = "#99d5fb" },
	{ name = "test.tsx", text = "", fg = "#99d5fb" },
	{ name = "tex", text = "", fg = "#74985c" },
	{ name = "tf", text = "", fg = "#cc8bd2" },
	{ name = "tfvars", text = "", fg = "#cc8bd2" },
	{ name = "tgz", text = "", fg = "#c5947c" },
	{ name = "tmpl", text = "", fg = "#74985c" },
	{ name = "tmux", text = "", fg = "#74985c" },
	{ name = "toml", text = "", fg = "#e1554f" },
	{ name = "torrent", text = "", fg = "#71c6b1" },
	{ name = "tres", text = "", fg = "#cc8bd2" },
	{ name = "ts", text = "", fg = "#99d5fb" },
	{ name = "tscn", text = "", fg = "#cc8bd2" },
	{ name = "tsconfig", text = "", fg = "#c5947c" },
	{ name = "tsx", text = "", fg = "#99d5fb" },
	{ name = "ttf", text = "", fg = "#dbdbdb" },
	{ name = "twig", text = "", fg = "#74985c" },
	{ name = "txt", text = "󰈙", fg = "#74985c" },
	{ name = "txz", text = "", fg = "#c5947c" },
	{ name = "typ", text = "", fg = "#71c6b1" },
	{ name = "typoscript", text = "", fg = "#c5947c" },
	{ name = "ui", text = "", fg = "#99d5fb" },
	{ name = "v", text = "󰍛", fg = "#74985c" },
	{ name = "vala", text = "", fg = "#cc8bd2" },
	{ name = "vh", text = "󰍛", fg = "#74985c" },
	{ name = "vhd", text = "󰍛", fg = "#74985c" },
	{ name = "vhdl", text = "󰍛", fg = "#74985c" },
	{ name = "vi", text = "", fg = "#c5947c" },
	{ name = "vim", text = "", fg = "#74985c" },
	{ name = "vsh", text = "", fg = "#99d5fb" },
	{ name = "vsix", text = "", fg = "#cc8bd2" },
	{ name = "vue", text = "", fg = "#74985c" },
	{ name = "wasm", text = "", fg = "#cc8bd2" },
	{ name = "wav", text = "", fg = "#99d5fb" },
	{ name = "webm", text = "", fg = "#c5947c" },
	{ name = "webmanifest", text = "", fg = "#74985c" },
	{ name = "webp", text = "", fg = "#cc8bd2" },
	{ name = "webpack", text = "󰜫", fg = "#99d5fb" },
	{ name = "wma", text = "", fg = "#99d5fb" },
	{ name = "wmv", text = "", fg = "#c5947c" },
	{ name = "woff", text = "", fg = "#dbdbdb" },
	{ name = "woff2", text = "", fg = "#dbdbdb" },
	{ name = "wrl", text = "󰆧", fg = "#d4d4d4" },
	{ name = "wrz", text = "󰆧", fg = "#d4d4d4" },
	{ name = "wv", text = "", fg = "#99d5fb" },
	{ name = "wvc", text = "", fg = "#99d5fb" },
	{ name = "x", text = "", fg = "#99d5fb" },
	{ name = "xaml", text = "󰙳", fg = "#cc8bd2" },
	{ name = "xcf", text = "", fg = "#252627" },
	{ name = "xcplayground", text = "", fg = "#e1554f" },
	{ name = "xcstrings", text = "", fg = "#99d5fb" },
	{ name = "xls", text = "󰈛", fg = "#74985c" },
	{ name = "xlsx", text = "󰈛", fg = "#74985c" },
	{ name = "xm", text = "", fg = "#99d5fb" },
	{ name = "xml", text = "󰗀", fg = "#e1554f" },
	{ name = "xpi", text = "", fg = "#e1554f" },
	{ name = "xul", text = "", fg = "#e1554f" },
	{ name = "xz", text = "", fg = "#c5947c" },
	{ name = "yaml", text = "", fg = "#cc8bd2" },
	{ name = "yml", text = "", fg = "#cc8bd2" },
	{ name = "zig", text = "", fg = "#c5947c" },
	{ name = "zip", text = "", fg = "#c5947c" },
	{ name = "zsh", text = "", fg = "#74985c" },
	{ name = "zst", text = "", fg = "#c5947c" },
	{ name = "🔥", text = "", fg = "#e1554f" },
]


conds = [
	# Special files
	{ if = "orphan", text = "" },
	# { if = "link", text = "" },
	{ if = "link", text = "󰉒" },
	{ if = "block", text = "" },
	{ if = "char", text = "" },
	{ if = "fifo", text = "" },
	{ if = "sock", text = "" },
	{ if = "sticky", text = "" },
	{ if = "dummy", text = "" },

	# Fallback
	# { if = "dir", text = "" },
	# { if = "dir", text = "" },
	{ if = "dir", text = "󰉋" },
	{ if = "exec", text = "" },
	# { if = "!dir", text = "" },
	{ if = "!dir", text = "󰈤" },
	# { if = "!dir", text = "" },
]

# : }}}
