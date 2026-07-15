vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
	buffer = bufnr,
	noremap = true,
	silent = false,
	desc = "Go to definition",
})
vim.keymap.set("n", "gD", function()
	vim.cmd("vsplit")
	vim.lsp.buf.definition()
end, {
	buffer = bufnr,
	noremap = true,
	silent = true,
	desc = "Go to definition in split",
})

vim.keymap.set({ "i", "s" }, "<C-k>", function()
	if luasnip.expand_or_jumpable() then
		luasnip.expand_or_jump()
	end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-j>", function()
	if luasnip.jumpable(-1) then
		luasnip.jump(-1)
	end
end, { silent = true })

vim.keymap.set("i", "<C-l>", function()
	if luasnip.choice_active() then
		luasnip.change_choice(1)
	end
end)
