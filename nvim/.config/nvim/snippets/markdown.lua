local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

return {
	s("link", fmt("[{}]({})", { i(1, "text"), i(2, "url") })),

	s("img", fmt("![{}]({})", { i(1, "alt text"), i(2, "url") })),

	s("code", fmt("```{}\n{}\n```", { i(1, "language"), i(2, "code") })),

	s("table", {
		t({ "| Header 1 | Header 2 |", "| -------- | -------- |" }),
		t({ "", "| " }),
		i(1, "cell 1"),
		t({ " | " }),
		i(2, "cell 2"),
		t({ " |" }),
	}),

	s("task", fmt("- [{}] {}", { c(1, { t(" "), t("x") }), i(2, "task") })),

	s("callout", {
		t({ "> [!" }),
		c(1, {
			t("NOTE"),
			t("TIP"),
			t("IMPORTANT"),
			t("WARNING"),
			t("QUOTE"),
		}),
		t({ "]", "> " }),
		i(2, "Content"),
	}),

	s("meta", {
		t({ "---", "title: " }),
		i(1, "Title"),
		t({ "", "date: " }),
		f(function()
			return os.date("%Y-%m-%d")
		end),
		t({ "", "tags: [" }),
		i(2, "tags"),
		t({ "]", "---", "" }),
		i(0),
	}),
}
