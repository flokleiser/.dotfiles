-- return {
--     plugin('yazi-rs/plugins:no-status'),
-- }
require("no-status"):setup()
require("full-border"):setup()

require("searchjump"):setup({
	unmatch_fg = "#dbdbdb",
	match_str_fg = "#15191e",
	match_str_bg = "#dbdbdb",
	first_match_str_fg = "#15191e",
	first_match_str_bg = "#dbdbdb",
	label_fg = "#dbdbdb",
	label_bg = "#15191e",
	only_current = true,
	show_search_in_statusbar = false,
	auto_exit_when_unmatch = false,
	enable_capital_label = true,
})

require("mactag"):setup({
	keys = {
		r = "Red",
		o = "Orange",
		y = "Yellow",
		g = "Green",
		b = "Blue",
		p = "Purple",
	},
	-- Colors used to display tags
	colors = {
		Red = "#ee7b70",
		Orange = "#f5bd5c",
		Yellow = "#fbe764",
		Green = "#91fc87",
		Blue = "#5fa3f8",
		Purple = "#cb88f8",
	},
})
