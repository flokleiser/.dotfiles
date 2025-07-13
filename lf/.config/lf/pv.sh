#!/bin/sh
case "$1" in
    *.tar*) tar tf "$1";;
    *.zip) unzip -l "$1";;
    *.rar) unrar l "$1";;
    *.7z) 7z l "$1";;
    *.pdf) pdftotext "$1" -;;
	*.png|*.jpg|*.jpeg|*.gif|*.bmp|*.tiff|*.webp|*.svg)
	if [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
		~/.config/lf/imgcat "$1"
	else
		chafa --fill=block --symbols=block -c 256 -s "${2}x${3}" "$1"
	fi
	;;
    *) bat --paging=never --style=numbers --terminal-width $(($2-5)) --color=always "$1" || true;;
esac
