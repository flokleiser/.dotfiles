## This is an example file for custom theme addition

# color format : 0x<hex value for transparency between 0-255><hex rgb color value>

if [[ "$COLOR_SCHEME" == "my-theme" ]]; then
	# Default Theme colors
	export BASE=0xff1e1e2e
	export SURFACE=0xff6c7086
	export OVERLAY=0xff313244
	export MUTED=0xff6e6a86
	export SUBTLE=0xff908caa

	export TEXT=0xffcdd6f4
	export CRITICAL=0xfff38ba8
	export NOTICE=0xfff9e2af
	export WARN=0xffeba0ac
	export SELECT=0xff89b4fa
	export GLOW=0xff89dceb
	export ACTIVE=0xffcba6f7

	export HIGH_LOW=0xff1e1e2e
	export HIGH_MED=0xff45475a
	export HIGH_HIGH=0xff585b70

	export BLACK=0xff11111b
	export TRANSPARENT=0x00000000

	# General bar colors
	export BAR_COLOR=0x80313244 #0xD9232136
	export BORDER_COLOR=0x8045475a
	export ICON_COLOR=$TEXT  # Color of all icons
	export LABEL_COLOR=$TEXT # Color of all labels

	export POPUP_BACKGROUND_COLOR=0xbe393552
	export POPUP_BORDER_COLOR=$HIGH_MED

	export SHADOW_COLOR=$TEXT
fi