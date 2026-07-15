local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

return {
	s("require", {
		t('require("'),
		i(1, "plugin"),
		t('").setup({'),
		i(2),
		t("})"),
	}),
	s("plug", {
		t("Plug '"),
		i(1, "pluginname"),
		t("'"),
	}),
}
