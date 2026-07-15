local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local rep = require("luasnip.extras").rep

return {
	s("for", {
		t("for (let "),
		i(1, "variable"),
		t(" = 0; "),
		rep(1),
		t(" < "),
		i(2, "limit"),
		t("; "),
		rep(1),
		t("++) {"),
		t({ "", "\t" }),
		i(0),
		t({ "", "}" }),
	}),
}
