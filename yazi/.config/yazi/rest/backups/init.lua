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
	-- Keys used to add or remove tags
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

local bookmarks = {
	{ tag = "Code", path = "~/Code", key = "C" },
	{ tag = "ZHdK", path = "~/ZHdK", key = "z" },
	{ tag = "Flo", path = "~/Flo", key = "f" },
	{ tag = "Downloads", path = "~/Downloads", key = "d" },
	{ tag = "Config", path = "~/.dotfiles", key = "c" },
	{ tag = "Nvim", path = "~/.dotfiles/nvim/.config/nvim", key = "n" },
	{ tag = "Yazi", path = "~/.dotfiles/yazi/.config/yazi", key = "y" },
}

require("whoosh"):setup({
	-- Configuration bookmarks (cannot be deleted through plugin)
	bookmarks = bookmarks,

	-- Notification settings
	jump_notify = false,

	-- Key generation for auto-assigning bookmark keys
	keys = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",

	-- Configure the built-in menu action hotkeys
	-- false - hide menu item
	special_keys = {
		create_temp = "<Enter>", -- Temp bookmark
		fuzzy_search = "<Space>", -- Launch fuzzy search (fzf)
		history = "<Tab>", -- Open directory history
		previous_dir = "<Backspace>", -- Jump back to the previous directory
	},

	-- File path for storing user bookmarks
	bookmarks_path = (
		ya.target_family() == "windows"
		and os.getenv("APPDATA") .. "\\yazi\\config\\plugins\\whoosh.yazi\\bookmarks"
	) or (os.getenv("HOME") .. "/.config/yazi/plugins/whoosh.yazi/bookmarks"),

	-- Replace home directory with "~"
	home_alias_enabled = true, -- Toggle home aliasing in displays

	-- Path truncation in navigation menu
	path_truncate_enabled = false, -- Enable/disable path truncation
	path_max_depth = 3, -- Maximum path depth before truncation

	-- Path truncation in fuzzy search (fzf)
	fzf_path_truncate_enabled = false, -- Enable/disable path truncation in fzf
	fzf_path_max_depth = 5, -- Maximum path depth before truncation in fzf

	-- Long folder name truncation
	path_truncate_long_names_enabled = false, -- Enable in navigation menu
	fzf_path_truncate_long_names_enabled = false, -- Enable in fzf
	path_max_folder_name_length = 20, -- Max length in navigation menu
	fzf_path_max_folder_name_length = 20, -- Max length in fzf

	-- History directory settings
	history_size = 10, -- Number of directories in history (default 10)
	history_fzf_path_truncate_enabled = false, -- Enable/disable path truncation by depth for history
	history_fzf_path_max_depth = 5, -- Maximum path depth before truncation for history (default 5)
	history_fzf_path_truncate_long_names_enabled = false, -- Enable/disable long folder name truncation for history
	history_fzf_path_max_folder_name_length = 30, -- Maximum length for folder names in history (default 30)
})
