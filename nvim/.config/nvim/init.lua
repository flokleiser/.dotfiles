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

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.winborder = "rounded"
vim.g.tmux_navigator_no_wrap = 1

-- maybe cursor fix
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"

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

		Plug 'tomasiser/vim-code-dark'
		Plug 'tpope/vim-commentary'

		Plug 'folke/noice.nvim'
		Plug 'MunifTanjim/nui.nvim'

		Plug 'echasnovski/mini.nvim'
		Plug 'gbprod/cutlass.nvim'
		Plug 'nvim-lua/plenary.nvim'
		Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
		Plug 'nvim-neo-tree/neo-tree.nvim'

		Plug 'nvim-lualine/lualine.nvim'
		Plug 'nvim-tree/nvim-web-devicons'

		Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
		Plug 'gbprod/cutlass.nvim'

		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

		Plug 'neovim/nvim-lspconfig'
		Plug 'hrsh7th/nvim-cmp'
		Plug 'hrsh7th/cmp-nvim-lsp'
		Plug 'hrsh7th/cmp-buffer'
		Plug 'hrsh7th/cmp-path'
		Plug 'L3MON4D3/LuaSnip'
		Plug 'saadparwaiz1/cmp_luasnip'

		Plug 'nvim-lua/lsp-status.nvim'
		Plug 'glepnir/lspsaga.nvim'

		Plug 'windwp/nvim-autopairs'
		Plug 'wojciech-kulik/xcodebuild.nvim'
		Plug 'christoomey/vim-tmux-navigator'

		Plug 'stevearc/conform.nvim'
		Plug 'wesleimp/stylua.nvim'

		Plug 'kevinhwang91/nvim-ufo', {'do': ':UpdateRemotePlugins'}
		Plug 'kevinhwang91/promise-async'
		Plug 'luukvbaal/statuscol.nvim'

        Plug 'sphamba/smear-cursor.nvim'
        Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
        Plug 'lmburns/lf.nvim'


	call plug#end()

	colorscheme codedark

    hi NeoTreeNormal guifg=#ffffff
    hi NeoTreeGitUntracked guifg=#569cd6
    hi NeoTreeGitUnstaged guifg=#f44747
    hi NeoTreeGitConflict guifg=#ff8c00
    hi NeoTreeGitDeleted guifg=#f44747
    hi NeoTreeGitStaged guifg=#6a9955
    hi NeoTreeGitAdded guifg=#6a9955
    hi NeoTreeFileIcon guifg=#569cd6
    hi NeoTreeDirectoryName guifg=#dcdcaa
    hi NeoTreeDirectoryIcon guifg=#569cd6

]])

-- Plug 'github/copilot.vim'
-- Plug 'olimorris/codecompanion.nvim'

-- =========================================================
-- LSP CONFIGURATION
-- =========================================================
local lspconfig = require("lspconfig")

-- SourceKit LSP (Swift)
lspconfig.sourcekit.setup({
	cmd = { "sourcekit-lsp" },
	filetypes = { "swift", "objective-c", "objective-cpp" },
	root_dir = function(fname)
		return lspconfig.util.root_pattern("Package.swift", ".git")(fname) or lspconfig.util.path.dirname(fname)
	end,
	capabilities = {
		workspace = {
			didChangeWatchedFiles = {
				dynamicRegistration = true,
			},
		},
	},
})

-- Go-lsp
lspconfig.gopls.setup({
	on_attach = on_attach,
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
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
})

-- Rust Analyzer LSP (Rust)
lspconfig.rust_analyzer.setup({
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_dir = lspconfig.util.root_pattern("Cargo.toml", ".git"),
})

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP Actions",
	callback = function(args)
		vim.keymap.set("n", "gh", function()
			vim.lsp.buf.hover()
			vim.defer_fn(function()
				for _, win in ipairs(vim.api.nvim_list_wins()) do
					local config = vim.api.nvim_win_get_config(win)
					if config.relative ~= "" and config.focusable then
						local buf = vim.api.nvim_win_get_buf(win)
						local line_count = vim.api.nvim_buf_line_count(buf)
						local win_height = vim.api.nvim_win_get_height(win)

						if line_count > win_height then
							vim.api.nvim_set_current_win(win)
						end
						return
					end
				end
			end, 100)
		end, { noremap = true, silent = true })

		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })
	end,
})

-- =========================================================
-- COMPLETION SETUP (CMP)
-- =========================================================
local cmp = require("cmp")
local luasnip = require("luasnip")

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
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
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

-- smear-cursor
require("smear_cursor").setup({
	stiffness = 0.7,
	trailing_stiffness = 0.7,
	distance_stop_animating = 0.5,
	smear_to_cmd = false,
})

-- toggleterm
require("toggleterm").setup()

-- lf inside nvim
require("lf").setup({
	winblend = 0,
	border = "rounded",
})
vim.keymap.set("n", "<leader>lf", "<Cmd>Lf<CR>")

-- XcodeBuild
require("xcodebuild").setup({
	auto_select_scheme = true,
	auto_select_target = true,
	show_build_progress = true,
})

-- nvim-ufo (foldable things)
require("ufo").setup()
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

-- Statuscol thing --
local function simple_foldfunc()
	local lnum = vim.v.lnum
	if vim.fn.foldlevel(lnum) > 0 then
		if vim.fn.foldclosed(lnum) == -1 then
			return ""
		elseif vim.fn.foldclosed(lnum) == lnum then
			return ""
		end
	end
	return " "
end
require("statuscol").setup({
	relculright = true,
	segments = {
		{ text = { "%s" }, click = "v:lua.ScSa" },
		{ text = { simple_foldfunc }, click = "v:lua.ScFa" },
		{ text = { "%l " }, click = "v:lua.ScLa" },
	},
})

-- Formatter (conform/stylua)
require("conform").setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "stylua" },
	},
})

-- Cutlass
require("cutlass").setup()

-- Treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed = { "javascript", "typescript", "tsx", "glsl" },
	highlight = { enable = true },
	auto_install = true,
})

-- neo-tree
vim.schedule(function()
	local ok, fs_commands = pcall(require, "neo-tree.sources.filesystem.commands")
	if not ok then
		return
	end

	require("neo-tree").setup({
		filesystem = {
			filtered_items = {
				visible = true,
				show_hidden_count = true,
			},
			window = {
				mappings = {
					["<space>"] = "toggle_node",
					["l"] = "open",
					["h"] = "close_node",
					["<Esc>"] = "revert_preview",

					["H"] = function(state)
						local winid = vim.api.nvim_get_current_win()
						local cur_width = vim.api.nvim_win_get_width(winid)
						vim.api.nvim_win_set_width(winid, cur_width - 5)
					end,

					["L"] = function(state)
						local winid = vim.api.nvim_get_current_win()
						local cur_width = vim.api.nvim_win_get_width(winid)
						vim.api.nvim_win_set_width(winid, cur_width + 5)
					end,

					["a"] = function(state)
						local node = state.tree:get_node()
						local base_path = node.type == "directory" and node.path or vim.fn.fnamemodify(node.path, ":h")
						vim.ui.input({ prompt = "New directory name: " }, function(input)
							if input and input ~= "" then
								os.execute(string.format("mkdir -p '%s/%s'", base_path, input))
								require("neo-tree.sources.filesystem.commands").refresh(state)
							end
						end)
					end,

					["A"] = function(state)
						local node = state.tree:get_node()
						local base_path = node.type == "directory" and node.path or vim.fn.fnamemodify(node.path, ":h")
						vim.ui.input({ prompt = "New file name: " }, function(input)
							if input and input ~= "" then
								os.execute(string.format("touch '%s/%s'", base_path, input))
								require("neo-tree.sources.filesystem.commands").refresh(state)
							end
						end)
					end,

					["x"] = fs_commands.delete,
					["r"] = fs_commands.rename,
					["y"] = fs_commands.copy_to_clipboard,
					["d"] = fs_commands.cut_to_clipboard,
					["p"] = fs_commands.paste_from_clipboard,
					["w"] = "set_root",
					["u"] = "navigate_up",
					["gh"] = "toggle_hidden",
				},
				-- default_component_configs = {}
			},
		},
	})
end)

-- Noice
if not vim.g._noice_loaded then
	require("noice").setup({
		lsp = {
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
				view = "mini",
				-- view = "popup",
				filter = {
					event = "msg_show",
				},
			},
		},
	})
	vim.g._noice_loaded = true
end

-- Lualine
local custom_codedark = require("lualine.themes.codedark")

local modes = { "normal", "insert", "visual", "replace", "command", "terminal", "inactive" }
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

require("lualine").setup({
	options = {
		theme = custom_codedark,
		globalstatus = true,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename" },
		lualine_c = {},
		lualine_x = {
			{
				"diagnostics",
				symbols = { error = " ", warn = " ", info = " ", hint = " " },
				separator = { right = " " },
				colored = true,
			},
		},
		lualine_y = {
			function()
				local clients = vim.lsp.get_clients({ bufnr = 0 })
				if next(clients) == nil then
					return "No LSP"
				end
				return clients[1].name
			end,
		},
		lualine_z = { "location" },
	},
})

-- Autopairs
require("nvim-autopairs").setup({
	enable_check_bracket_line = false,
	ignored_next_char = "[%w%.]",
})

-- Telescope
require("telescope").setup()

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

-- Markview hl
-- vim.api.nvim_set_hl(0, "MarkviewPalette0", { bg = "NONE", fg = "#ffffff" })

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

-- Utility mappings
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlighting" })

-- Telescope mappings
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>fx", "<cmd>Telescope diagnostics<CR>", { desc = "Telescope diagnostics" })

-- vim.keymap.set("n", "J", )

-- Neo-tree navigation
vim.keymap.set("n", "<leader>fe", "<cmd>Neotree toggle<CR>")

-- Commentary plugin
vim.keymap.set("n", "\\", "<Plug>CommentaryLine", { noremap = false })
vim.keymap.set("x", "\\", "<Plug>Commentary", { noremap = false })
vim.keymap.set("n", "¿", "<Plug>CommentaryLine", { noremap = false })
vim.keymap.set("x", "¿", "<Plug>Commentary", { noremap = false })

-- maximizer --
-- vim.keymap.set("n",)

-- splits --

-- vim.keymap.set("n", "<leader>h", require("smart-splits").resize_left)
-- vim.keymap.set("n", "<leader>j", require("smart-splits").resize_down)
-- vim.keymap.set("n", "<leader>k", require("smart-splits").resize_up)
-- vim.keymap.set("n", "<leader>l", require("smart-splits").resize_right)

if vim.fn.empty(vim.env.TMUX) == 1 then
	local map = vim.keymap.set
	local opts = { noremap = true, silent = true }

	map("n", "<leader>|", ":vsplit<CR>", opts)
	map("n", "<leader>-", ":split<CR>", opts)

	map("n", "<leader>h", "10<C-w><") -- shrink horizontally
	map("n", "<leader>l", "10<C-w>>") -- grow horizontally
	map("n", "<leader>j", "2<C-w>+", opts) -- grow vertically
	map("n", "<leader>k", "2<C-w>-", opts) -- shrink vertically
end

-- Config reload
vim.keymap.set("n", "<leader>rr", function()
	vim.cmd("luafile $MYVIMRC")
	print("Config reloaded!")
end, { desc = "Reload Neovim config" })

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

-- output to buffer

vim.api.nvim_create_user_command("Redir", function(ctx)
	local output = vim.api.nvim_exec2(ctx.args, { output = true })
	vim.cmd("new")
	local lines = vim.split(output.output, "\n", { plain = true })
	vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
	vim.opt_local.modified = false
	vim.opt_local.buftype = "nofile"
	vim.opt_local.bufhidden = "wipe"
end, { nargs = "+", complete = "command" })

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

-- LF config filetype
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "~/.config/lf/lfrc",
	callback = function()
		vim.bo.filetype = "vim"
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
