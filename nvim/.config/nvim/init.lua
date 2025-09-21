-- =========================================================
-- BASIC VIM OPTIONS
-- =========================================================
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.showcmd = false
vim.opt.more = true
vim.opt.showmode = false
vim.opt.scrolloff = 8
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.fillchars = { eob = " " }
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true
vim.opt.timeoutlen = 100

vim.opt.formatoptions:remove({ "r", "o" })

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.winborder = "rounded"
vim.g.tmux_navigator_no_wrap = 1

-- =========================================================
-- LEADER KEY SETUP
-- =========================================================
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- =========================================================
-- STATUSLINE CONFIGURATION
-- =========================================================
vim.opt.statusline = table.concat({
	"%f",
	" %h%m%r",
})

-- =========================================================
-- THEME AND APPEARANCE
-- =========================================================
vim.g.codedark_transparent = 1

-- =========================================================
-- PLUGIN MANAGEMENT
-- =========================================================

vim.cmd([[
	syntax on
	filetype plugin indent on

	hi Normal guibg=NONE ctermbg=NONE
	hi NonText guibg=NONE ctermbg=NONE
	hi SignColumn guibg=NONE ctermbg=NONE
	hi LineNr guibg=NONE ctermbg=NONE
	hi CursorLineNr guibg=NONE ctermbg=NONE
	hi EndOfBuffer guibg=NONE ctermbg=NONE
	hi FoldColumn guibg=NONE ctermbg=NONE
	hi ColorColumn guibg=NONE ctermbg=NONE
	hi CursorLine guibg=NONE ctermbg=NONE
	hi CursorColumn guibg=NONE ctermbg=NONE
	hi VertSplit guibg=NONE ctermbg=NONE
	hi Folded guibg=NONE ctermbg=NONE

	call plug#begin('~/.config/nvim/plugged')

		Plug 'tpope/vim-commentary'

		Plug 'folke/noice.nvim'
        Plug 'folke/flash.nvim'

        Plug 'rcarriga/nvim-notify'

		Plug 'MunifTanjim/nui.nvim'

		Plug 'echasnovski/mini.nvim'
		Plug 'gbprod/cutlass.nvim'
		Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'

		Plug 'nvim-lualine/lualine.nvim'
		Plug 'nvim-tree/nvim-web-devicons'

        Plug 'neovim/nvim-lspconfig', { 'tag': 'v0.10.0' }

        Plug 'OXY2DEV/markview.nvim'
        Plug 'MeanderingProgrammer/render-markdown.nvim'

		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

		Plug 'hrsh7th/nvim-cmp'
		Plug 'hrsh7th/cmp-nvim-lsp'
		Plug 'hrsh7th/cmp-buffer'
		Plug 'hrsh7th/cmp-path'
		Plug 'L3MON4D3/LuaSnip'
		Plug 'saadparwaiz1/cmp_luasnip'

		Plug 'nvim-lua/lsp-status.nvim'

		Plug 'windwp/nvim-autopairs'
		Plug 'wojciech-kulik/xcodebuild.nvim'
		Plug 'christoomey/vim-tmux-navigator'

		Plug 'stevearc/conform.nvim'
		Plug 'wesleimp/stylua.nvim'

		Plug 'kevinhwang91/nvim-ufo', {'do': ':UpdateRemotePlugins'}
		Plug 'kevinhwang91/promise-async'

        Plug 'folke/which-key.nvim'

        Plug 'folke/snacks.nvim'
        Plug 'brenoprata10/nvim-highlight-colors'

		Plug 'tomasiser/vim-code-dark'

        Plug '0x00-ketsu/maximizer.nvim'

        Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

        Plug 'mikavilpas/yazi.nvim'

        Plug 'nvim-tree/nvim-tree.lua'

	call plug#end()
    
    colorscheme codedark

    highlight Comment cterm=italic gui=italic

    hi NeoTreeNormal guifg=#d4d4d4
    hi NeoTreeGitUntracked guifg=#99d5fb
    hi NeoTreeGitUnstaged guifg=#71c6b1
    hi NeoTreeGitConflict guifg=#c5947c
    hi NeoTreeGitModified guifg=#ffffff
    hi NeoTreeGitDeleted guifg=#71c6b1
    hi NeoTreeGitStaged guifg=#74985c
    hi NeoTreeGitAdded guifg=#74985c
    hi NeoTreeFileIcon guifg=#99d5fb
    hi NeoTreeDirectoryName guifg=#d4d4d4

    hi DiffText guibg=#005f87

    hi NeoTreeTitleBar guibg=NONE
    hi NeoTreeCursorLine guibg=NONE
    hi NeoTreeRootName guibg=NONE
    hi NeoTreeDirectoryIcon guifg=#99d5fb

    hi MiniIndentscopeSymbol guifg=#7F8490

    hi MarkviewListItemMinus guifg=#7F8490
    hi MarkviewCodeInfo guifg=#7F8490
    hi MarkviewBlockQuoteDefault guifg=#7F8490

    hi MarkviewIcon0 guifg=#7F8490

    hi MarkviewPalette0 guifg=#000000 guibg=#F8F9FA
    hi MarkviewPalette1 guifg=#000000 guibg=#E9ECEF
    hi MarkviewPalette2 guifg=#000000 guibg=#DEE2E6
    hi MarkviewPalette3 guifg=#000000 guibg=#CED4DA
    hi MarkviewPalette4 guifg=#000000 guibg=#ADB5BD
    hi MarkviewPalette5 guifg=#000000 guibg=#6C757D
    hi MarkviewPalette6 guifg=#000000 guibg=#495057

    hi MarkviewPalette0Sign guifg=#F8F9FA
    hi MarkviewPalette1Sign guifg=#E9ECEF
    hi MarkviewPalette2Sign guifg=#DEE2E6
    hi MarkviewPalette3Sign guifg=#CED4DA
    hi MarkviewPalette4Sign guifg=#ADB5BD
    hi MarkviewPalette5Sign guifg=#6C757D
    hi MarkviewPalette6Sign guifg=#495057

    hi RenderMarkdownH0Bg guibg=#F8F9FA guifg=#000000
    hi RenderMarkdownH1Bg guibg=#E9ECEF guifg=#000000
    hi RenderMarkdownH2Bg guibg=#DEE2E6 guifg=#000000
    hi RenderMarkdownH3Bg guibg=#CED4DA guifg=#000000
    hi RenderMarkdownH4Bg guibg=#ADB5BD guifg=#000000
    hi RenderMarkdownH5Bg guibg=#6C757D guifg=#000000
    hi RenderMarkdownH6Bg guibg=#495057 guifg=#000000

    highlight NotifyERRORBorder guifg=#8A1F1F
    highlight NotifyWARNBorder guifg=#79491D
    highlight NotifyINFOBorder guifg=#4F6752
    highlight NotifyDEBUGBorder guifg=#8B8B8B
    highlight NotifyTRACEBorder guifg=#4F3552
    highlight NotifyERRORIcon guifg=#F70067
    highlight NotifyWARNIcon guifg=#F79000
    highlight NotifyINFOIcon guifg=#ffffff
    highlight NotifyDEBUGIcon guifg=#8B8B8B
    highlight NotifyTRACEIcon guifg=#D484FF
    highlight NotifyERRORTitle  guifg=#F70067
    highlight NotifyWARNTitle guifg=#F79000
    highlight NotifyINFOTitle guifg=#ffffff
    highlight NotifyDEBUGTitle  guifg=#8B8B8B
    highlight NotifyTRACETitle  guifg=#D484FF
    highlight NotifyERRORBody guifg=#ffffff
    highlight NotifyWARNBody guifg=#ffffff
    highlight NotifyINFOBody guifg=#ffffff
    highlight NotifyDEBUGBody guifg=#ffffff
    highlight NotifyTRACEBody guifg=#ffffff

]])

-- Debugging area for plugs that cause issues
-- highlight link NotifyERRORBody Normal
-- highlight link NotifyWARNBody Normal
-- highlight link NotifyINFOBody Normal
-- highlight link NotifyDEBUGBody Normal
-- highlight link NotifyTRACEBody Normal

-- =========================================================
-- LSP CONFIGURATION
-- =========================================================
vim.lsp.config.glsl_analyzer = {
	cmd = { "glsl_analyzer" },
	filetypes = { "glsl" },
	on_attach = function(client, bufnr)
		print("GLSL Analyzer attached to buffer " .. bufnr)
	end,
}

vim.lsp.config.sourcekit = {
	cmd = { "sourcekit-lsp" },
	filetypes = { "swift", "objective-c", "objective-cpp" },
	root_markers = { "Package.swift", ".git" },
	capabilities = {
		workspace = {
			didChangeWatchedFiles = {
				dynamicRegistration = true,
			},
		},
	},
}

vim.lsp.config.gopls = {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_markers = { "go.work", "go.mod", ".git" },
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			gofumpt = true,
		},
	},
}

vim.lsp.config.lua_ls = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
}

vim.lsp.config.rust_analyzer = {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { "Cargo.toml", ".git" },
}

vim.lsp.enable("ts_ls")
vim.lsp.enable("glsl_analyzer")
vim.lsp.enable("sourcekit")
vim.lsp.enable("gopls")
vim.lsp.enable("rust_analyzer")
-- vim.lsp.enable("lua_ls")

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP Actions",
	callback = function(args)
		local bufnr = args.buf

		vim.keymap.set("n", "gh", vim.lsp.buf.hover, {
			buffer = bufnr,
			noremap = true,
			silent = true,
			desc = "Hover description",
		})

		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
			buffer = bufnr,
			noremap = true,
			silent = false,
			desc = "Go to definition",
		})
	end,
})

-- =========================================================
-- COMPLETION SETUP (CMP)
-- =========================================================
local cmp = require("cmp")
local luasnip = require("luasnip")

luasnip.config.setup({})

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping(function(fallback)
			fallback()
		end, { "i", "s" }),

		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.confirm({ select = true })
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
		{ name = "path" },
	}),
})

-- =========================================================
-- PLUGIN CONFIGURATIONS
-- =========================================================

-- yank and keep selection
vim.keymap.set("v", "y", "ygv", { desc = "yank and keep selection" })

-- move lines
vim.keymap.set("n", "<D-S-j>", "<Nop>")
vim.keymap.set("n", "<D-S-k>", "<Nop>")
vim.keymap.set("v", "<D-S-j>", "<Nop>")
vim.keymap.set("v", "<D-S-k>", "<Nop>")

vim.keymap.set("v", "<D-S-j>", ":m '>+1<CR>gv=gv", { desc = "move line down" })
vim.keymap.set("v", "<D-S-k>", ":m '<-2<CR>gv=gv", { desc = "move selection up" })

-- snacks (scratch buffer)
vim.keymap.set("n", "<leader>.", function()
	Snacks.scratch()
end, { desc = "Scratch buffer" })

-- snacks file explorer
vim.keymap.set("n", "<leader>es", function()
	Snacks.explorer()
end, { desc = "Snacks file explorer" })

vim.keymap.set("n", "<leader>nh", "<cmd>:Telescope notify<CR>", { desc = "Notification history" })
-- vim.keymap.set("n", "<leader>nh", function()
-- 	require("snacks").notifier.show_history()
-- end)

-- which-key
require("which-key").setup({
	preset = "modern",
	-- preset = "helix",
})

-- maximizer
require("maximizer").setup()

-- yazi inside nvim
vim.keymap.set("n", "<leader>yy", function()
	require("yazi").yazi()
end, { desc = "Yazi" })

-- highlight-colors
require("nvim-highlight-colors").setup({})

-- XcodeBuild
require("xcodebuild").setup({
	auto_select_scheme = true,
	auto_select_target = true,
	show_build_progress = true,
})

-- nvim-ufo (foldable things)
require("ufo").setup({
	open_fold_hl_timeout = 150,
	preview = {
		win_config = {
			border = { "", "─", "", "", "", "─", "", "" },
			winhighlight = "Normal:Folded",
			winblend = 0,
		},
	},
})
-- vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- vim.keymap.set("n", "zR", require("ufo").toggleFold)
vim.keymap.set("n", "za", "za", { desc = "Toggle fold under cursor" })
vim.keymap.set("n", "\x1b[1;5P", "za", { desc = "Toggle fold under cursor" })

vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })

-- mini stuff --
require("mini.indentscope").setup({
	symbol = "│",
})

-- markview
local presets = require("markview.presets")
require("markview").setup({
	enabled = false,
	markdown = {
		headings = presets.headings.marker,
		horizontal_rules = presets.horizontal_rules.thin,
	},
})

require("markview").setup({
	markdown = {
		headings = {
			heading_1 = { sign = "" },
			heading_2 = { sign = "" },
		},
	},
})

-- render-markdown
require("render-markdown").setup({
	enabled = false,
	sign = {
		enabled = false,
	},
	heading = {
		icons = {},
	},
	-- ft = {
	-- 	"markdown",
	-- 	"norg",
	-- 	"rmd",
	-- 	"org",
	-- },
})

vim.keymap.set(
	"n",
	"<leader>mv",
	"<cmd>Markview enable<CR><cmd>RenderMarkdown disable<CR>",
	{ desc = "Markview Toggle" }
)
vim.keymap.set(
	"n",
	"<leader>md",
	"<cmd>RenderMarkdown enable<CR><cmd>Markview disable<CR>",
	{ desc = "RenderMarkdown Toggle" }
)

vim.keymap.set(
	"n",
	"<leader>mt",
	"<cmd>RenderMarkdown disable<CR><cmd>Markview disable<CR>",
	{ desc = "Disable RenderMarkdown & Markview" }
)

-- Formatter (conform/stylua)
require("conform").setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt" },
	},
})

-- Cutlass
require("cutlass").setup()

-- Treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed = { "javascript", "typescript", "tsx", "glsl", "markdown", "markdown_inline" },
	highlight = {
		enable = true,
		-- disable = { "markdown", "markdown_inline" },
	},
	auto_install = true,
	indent = { enable = true },
	autopairs = { enable = true },
	autotag = { enable = true },
})

-- nvim-tree
vim.keymap.set("n", "<leader>fe", "<cmd>NvimTreeToggle<CR>", { desc = "Neotree Toggle" })

local function on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	vim.keymap.set("n", "<space>", api.node.open.edit, opts("Toggle node"))
	vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
	vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close node"))
	vim.keymap.set("n", "<Esc>", api.node.open.preview, opts("Preview"))

	vim.keymap.set("n", "H", function()
		local winid = vim.api.nvim_get_current_win()
		local cur_width = vim.api.nvim_win_get_width(winid)
		vim.api.nvim_win_set_width(winid, cur_width - 5)
	end, opts("Decrease width"))

	vim.keymap.set("n", "L", function()
		local winid = vim.api.nvim_get_current_win()
		local cur_width = vim.api.nvim_win_get_width(winid)
		vim.api.nvim_win_set_width(winid, cur_width + 5)
	end, opts("Increase width"))

	vim.keymap.set("n", "a", function()
		local node = api.tree.get_node_under_cursor()
		if not node then
			return
		end
		local base_path = node.type == "directory" and node.absolute_path
			or vim.fn.fnamemodify(node.absolute_path, ":h")
		vim.ui.input({ prompt = "New directory name: " }, function(input)
			if input and input ~= "" then
				os.execute(string.format("mkdir -p '%s/%s'", base_path, input))
				api.tree.reload()
			end
		end)
	end, opts("Create directory"))

	vim.keymap.set("n", "A", function()
		local node = api.tree.get_node_under_cursor()
		if not node then
			return
		end
		local base_path = node.type == "directory" and node.absolute_path
			or vim.fn.fnamemodify(node.absolute_path, ":h")
		vim.ui.input({ prompt = "New file name: " }, function(input)
			if input and input ~= "" then
				os.execute(string.format("touch '%s/%s'", base_path, input))
				api.tree.reload()
			end
		end)
	end, opts("Create file"))

	vim.keymap.set("n", "x", api.fs.remove, opts("Delete"))
	vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
	vim.keymap.set("n", "y", api.fs.copy.node, opts("Copy"))
	vim.keymap.set("n", "d", api.fs.cut, opts("Cut"))
	vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))
	vim.keymap.set("n", "w", api.tree.change_root_to_node, opts("Set root"))
	vim.keymap.set("n", "u", api.tree.change_root_to_parent, opts("Navigate up"))
	vim.keymap.set("n", "gh", api.tree.toggle_hidden_filter, opts("Toggle hidden"))
end

require("nvim-tree").setup({
	on_attach = on_attach,
	auto_reload_on_write = true,
	disable_netrw = false,
	hijack_netrw = true,
	hijack_cursor = false,
	hijack_unnamed_buffer_when_opening = false,
	sort = {
		sorter = "name",
		folders_first = true,
	},
	view = {
		centralize_selection = false,
		cursorline = true,
		debounce_delay = 15,
		width = 40,
		preserve_window_proportions = false,
		number = false,
		relativenumber = false,
		signcolumn = "yes",
		float = {
			enable = false,
		},
	},
	renderer = {
		add_trailing = false,
		group_empty = false,
		highlight_git = false,
		full_name = false,
		highlight_opened_files = "none",
		root_folder_label = ":~:s?$?/..?",
		indent_width = 2,
		indent_markers = {
			enable = false,
		},
		icons = {
			show = {
				-- file = false,
				-- folder = false,
				file = true,
				folder = true,
				folder_arrow = true,
				git = false,
			},
		},
	},
	hijack_directories = {
		enable = true,
		auto_open = true,
	},
	update_focused_file = {
		enable = false,
		update_root = false,
		ignore_list = {},
	},
	system_open = {
		cmd = "",
		args = {},
	},
	diagnostics = {
		enable = false,
	},
	filters = {
		dotfiles = false,
		git_clean = false,
		no_buffer = false,
		custom = {},
		exclude = {},
	},
	filesystem_watchers = {
		enable = true,
		debounce_delay = 50,
		ignore_dirs = {},
	},
	git = {
		enable = true,
		ignore = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
		timeout = 400,
	},
	actions = {
		use_system_clipboard = true,
		change_dir = {
			enable = true,
			global = false,
			restrict_above_cwd = false,
		},
		expand_all = {
			max_folder_discovery = 300,
			exclude = {},
		},
		file_popup = {
			open_win_config = {
				col = 1,
				row = 1,
				relative = "cursor",
				border = "shadow",
				style = "minimal",
			},
		},
		open_file = {
			quit_on_open = false,
			resize_window = true,
			window_picker = {
				enable = true,
				picker = "default",
				chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
				exclude = {
					filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
					buftype = { "nofile", "terminal", "help" },
				},
			},
		},
		remove_file = {
			close_window = true,
		},
	},
	trash = {
		cmd = "gio trash",
	},
	live_filter = {
		prefix = "[FILTER]: ",
		always_show_folders = true,
	},
	tab = {
		sync = {
			open = false,
			close = false,
			ignore = {},
		},
	},
	notify = {
		threshold = vim.log.levels.INFO,
	},
	log = {
		enable = false,
		truncate = false,
		types = {
			all = false,
			config = false,
			copy_paste = false,
			dev = false,
			diagnostics = false,
			git = false,
			profile = false,
			watcher = false,
		},
	},
})

-- flash
require("flash").setup()
vim.keymap.set("n", "s", function()
	require("flash").jump()
end, { desc = "Flash" })

vim.keymap.del("n", "f")
vim.keymap.del("n", "F")

-- Noice
if not vim.g._noice_loaded then
	require("noice").setup({
		views = {
			cmdline_popup = {
				size = {
					width = 35,
					height = "auto",
				},
			},
		},
		lsp = {
			hover = {
				enabled = false,
			},
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
			},
		},
		presets = {
			command_palette = true,
			long_message_to_split = true,
			inc_rename = false,
			lsp_doc_border = true,
		},
		routes = {
			{
				-- view = "mini",
				view = "notify",
				filter = {
					event = "msg_show",
					["not"] = { kind = { "search_count", "echo" } },
				},
			},
		},
		-- notify = {
		-- 	enabled = true,
		-- 	view = "notify",
		-- },
		-- messages = {
		-- 	enabled = false,
		-- },
	})
	vim.g._noice_loaded = true
end

require("notify").setup({
	background_colour = "#ffffff",
	stages = "fade",
	render = "minimal",
	max_width = 40,
	timeout = 20,
})

-- Lualine
local custom_codedark = require("lualine.themes.codedark")

local modes = { "normal", "insert", "visual" }
local sections = { "a", "b", "c" }

for _, mode in ipairs(modes) do
	if custom_codedark[mode] == nil then
		custom_codedark[mode] = {}
	end
	for _, section in ipairs(sections) do
		if custom_codedark[mode][section] == nil then
			custom_codedark[mode][section] = {}
		end
		custom_codedark[mode][section].bg = "NONE"
		custom_codedark[mode][section].fg = "#7F8490"
	end
end

custom_codedark.normal.a.gui = "bold"
custom_codedark.insert.a.gui = "bold"

-- LuaLine
require("lualine").setup({
	options = {
		theme = custom_codedark,
		globalstatus = true,
		component_separators = { right = "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename" },
		lualine_c = {},
		lualine_x = {
			{
				"filetype",
				"diagnostics",
				symbols = { error = " ", warn = " ", info = " ", hint = " " },
				separator = { right = " " },
				colored = false,
			},
		},
		lualine_y = {
			function()
				local clients = vim.lsp.get_clients({ bufnr = 0 })
				if next(clients) == nil then
					-- return "No LSP"
					return ""
				end
				return clients[1].name
			end,
		},
		-- lualine_z = { "location"},
		lualine_z = { "location", "progress" },
	},
})

-- Autopairs
require("nvim-autopairs").setup({
	enable_check_bracket_line = false,
	ignored_next_char = "[%w%.]",
})

-- Telescope
local actions = require("telescope.actions")

local function move_down(prompt_bufnr, count)
	for _ = 1, count do
		actions.move_selection_next(prompt_bufnr)
	end
end

local function move_up(prompt_bufnr, count)
	for _ = 1, count do
		actions.move_selection_previous(prompt_bufnr)
	end
end

require("telescope").setup({
	defaults = {
		initial_mode = "normal",
		mappings = {
			n = {
				["J"] = function(prompt_bufnr)
					move_down(prompt_bufnr, 5)
				end,
				["K"] = function(prompt_bufnr)
					move_up(prompt_bufnr, 5)
				end,
				["i"] = function()
					vim.cmd("startinsert")
				end,

				["q"] = "close",
				["<Esc>"] = "close",
			},
		},
	},
})

-- Config reload
vim.keymap.set("n", "<leader>rr", function()
	vim.cmd("luafile $MYVIMRC")
	print("Config reloaded!")
end, { desc = "Reload Neovim config" })

-- =========================================================
-- HIGHLIGHT GROUPS AND COLORS
-- =========================================================
vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE" })

-- Noice highlight groups
vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = "NONE", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { bg = "NONE", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NoiceCmdline", { bg = "NONE", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = "#ffffff", bold = true })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupInput", { fg = "#ffffff", bg = "NONE" })
vim.api.nvim_set_hl(0, "NoicePopup", { fg = "#ffffff", bg = "NONE" })
vim.api.nvim_set_hl(0, "NoicePopupmenu", { fg = "#ffffff", bg = "NONE" })
vim.api.nvim_set_hl(0, "NoicePopupmenuBorder", { fg = "#ffffff", bg = "NONE" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePrompt", { fg = "#ffffff", bg = "NONE" })
vim.api.nvim_set_hl(0, "MsgArea", { fg = "white", bg = "NONE" })
vim.api.nvim_set_hl(0, "MsgSeparator", { bg = "NONE" })
vim.api.nvim_set_hl(0, "CmdLine", { bg = "NONE" })

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#7F8490" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualLinesHint", { fg = "#7F8490" })

-- =========================================================
-- KEY MAPPINGS
-- =========================================================

-- Unset keys --
vim.keymap.set("n", "?", "<Nop>")

-- Command shortcuts
vim.cmd.cnoreabbrev("msg messages")
vim.cmd.cnoreabbrev("hl highlight")

-- Window navigation
vim.g.tmux_navigator_no_mappings = 1
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")

-- Enhanced movement keys
vim.keymap.set("n", "J", "5j")
vim.keymap.set("n", "K", "5k")
vim.keymap.set("n", "L", "5l")
vim.keymap.set("n", "H", "5h")
vim.keymap.set("v", "J", "5j")
vim.keymap.set("v", "K", "5k")
vim.keymap.set("v", "L", "5l")
vim.keymap.set("v", "H", "5h")

-- Toggleterm keybinds

require("toggleterm").setup()
vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)

local Terminal = require("toggleterm.terminal").Terminal
local term1 = Terminal:new({ direction = "horizontal", id = 1 })
local term2 = Terminal:new({ direction = "horizontal", id = 2 })

local function open_terms()
	term1:open()
	term2:open()
	vim.cmd("wincmd =")
end

vim.keymap.set("n", "<leader>tt", open_terms, { desc = "Open two quick terminals" })

-- Utility mappings
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlighting" })

-- Telescope mappings
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
-- vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
-- vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>fx", "<cmd>Telescope diagnostics<CR>", { desc = "Telescope diagnostics" })

vim.keymap.set("n", "<leader>k", require("telescope.builtin").keymaps, { desc = "Telescope Keymaps" })

-- Neo-tree navigation
-- vim.keymap.set("n", "<leader>fe", "<cmd>Neotree toggle<CR>", { desc = "Neotree Toggle" })

-- Commentary plugin
vim.keymap.set("n", "\\", "<Plug>CommentaryLine", { noremap = false })
vim.keymap.set("x", "\\", "<Plug>Commentary", { noremap = false })
vim.keymap.set("n", "¿", "<Plug>CommentaryLine", { noremap = false })
vim.keymap.set("x", "¿", "<Plug>Commentary", { noremap = false })

-- maximizer --
vim.api.nvim_set_keymap("n", "mt", '<cmd>lua require("maximizer").toggle()<CR>', { silent = true, noremap = true })

-- splits --
vim.api.nvim_set_keymap("n", "<leader>|", "<cmd>vnew<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>-", "<cmd>new<CR>", { silent = true, noremap = true })

-- =========================================================
-- AUTOCOMMANDS
-- =========================================================

-- Help window behavior
vim.api.nvim_create_autocmd("FileType", {
	pattern = "help",
	callback = function()
		vim.cmd("wincmd L")
	end,
})

-- Hover window thingy
vim.api.nvim_create_autocmd("WinEnter", {
	callback = function()
		local win_config = vim.api.nvim_win_get_config(0)
		if win_config.relative ~= "" then
			vim.keymap.set("n", "K", "5k", { buffer = true, silent = true })
			vim.keymap.set("n", "<Esc>", ":q<CR>", { buffer = true, silent = true })
		end
	end,
})

-- Error showing
vim.diagnostic.config({
	float = { border = "rounded" },
	virtual_text = true,
	virtual_lines = false,
	virtual_text = false,
	signs = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

vim.diagnostic.config({
	float = { border = "rounded" },
	virtual_text = true,
	virtual_lines = false,
})

-- Command window escape behavior
vim.api.nvim_create_autocmd("CmdwinEnter", {
	callback = function()
		vim.keymap.set("n", "<Esc>", "<C-c> <C-c>", { buffer = true })
	end,
})

-- Search on <Esc>
vim.api.nvim_create_autocmd("CmdlineEnter", {
	-- pattern = { "/", "?" },
	pattern = "/",
	callback = function()
		vim.keymap.set("c", "<Esc>", "<CR>", { buffer = true })
	end,
})

-- GLSL filetype detection
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.frag", "*.vert", "*.glsl" },
	callback = function()
		vim.bo.filetype = "glsl"
	end,
})

-- format on save(?)
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

-- =========================================================
-- TERMINAL CURSOR CONFIGURATION
-- =========================================================
if vim.env.TERM and vim.env.TERM:match("xterm") then
	vim.cmd([[
    let &t_EI = "\e[2 q"
    let &t_SI = "\e[5 q"
    autocmd VimEnter * silent !echo -ne "\e[2 q"
  ]])
end
