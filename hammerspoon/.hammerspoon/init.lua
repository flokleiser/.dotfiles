local function getValidWindows()
	local wins = hs.window.visibleWindows()
	local valid = {}
	for _, w in ipairs(wins) do
		if not w:isMinimized() and w:isStandard() and w:frame().w > 0 and w:frame().h > 0 then
			table.insert(valid, w)
		end
	end
	return valid
end

local directions = {
	h = "West",
	l = "East",
}

for key, direction in pairs(directions) do
	hs.hotkey.bind({ "shift", "cmd" }, key, function()
		local win = hs.window.focusedWindow()
		if not win then
			hs.alert.show("No focused window")
			return
		end

		local candidateWindows = getValidWindows()
		local method = "focusWindow" .. direction
		local focused = win[method](win, candidateWindows, true, false)
	end)
end
