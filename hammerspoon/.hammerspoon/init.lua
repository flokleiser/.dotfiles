-- local function getValidWindows()
-- 	local wins = hs.window.visibleWindows()
-- 	local valid = {}
-- 	for _, w in ipairs(wins) do
-- 		if not w:isMinimized() and w:isStandard() and w:frame().w > 0 and w:frame().h > 0 then
-- 			-- if not w:isMinimized() and w:frame().w > 0 and w:frame().h > 0 then
-- 			table.insert(valid, w)
-- 		end
-- 	end
-- 	return valid
-- end

-- local directions = {
-- 	h = "West",
-- 	l = "East",
-- 	j = "South",
-- 	k = "North",
-- }

-- for key, direction in pairs(directions) do
-- 	hs.hotkey.bind({ "shift", "cmd" }, key, function()
-- 		local win = hs.window.focusedWindow()
-- 		if not win then
-- 			return
-- 		end
-- 		local method = win["focusWindow" .. direction]
-- 		method(win)
-- 	end)
-- end

Swipe = hs.loadSpoon("Swipe")

local config = {
	fingers = 3,
	-- 0.1 = swipe distance > 10% of trackpad
	threshold = 0.02,
	showAlert = false,
	alertDuration = 0.3,
}

local AEROSPACE = "/opt/homebrew/bin/aerospace"
function aerospaceExec(cmd)
	local command = string.format(
		"%s list-workspaces --monitor mouse --visible | xargs %s workspace && %s workspace --no-stdin %s",
		AEROSPACE,
		AEROSPACE,
		AEROSPACE,
		cmd
	)

	hs.execute(command)

	if config.showAlert then
		hs.alert.show("AeroSpace: " .. cmd, config.alertDuration)
	end
end

local current_id, threshold
-- use 4-fingers swipe to switch workspace
Swipe:start(config.fingers, function(direction, distance, id)
	if id == current_id then
		if distance > threshold then
			-- only trigger once per swipe
			threshold = math.huge
			if direction == "left" then
				aerospaceExec("prev")
			elseif direction == "right" then
				aerospaceExec("next")
			end
		end
	else
		current_id = id
		threshold = config.threshold
	end
end)
