#!/bin/sh
if [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
    printf '\e]1337;File=inline=1:\a\n'
fi
