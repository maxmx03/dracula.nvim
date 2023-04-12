local dracula = require("dracula")
local c = dracula.colors

local colors = {
	bgdark = c.float_bg,
	lightgray = c.comment,
	blended_purple = c.blended_orange,
	purple = c.purple,
	red = c.red,
	yellow = c.yellow,
	green = c.green,
	white = c.fg,
	bg = c.bg,
}

return {
	normal = {
		a = { bg = colors.purple, fg = colors.bg, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.bgdark, fg = colors.white },
	},
	insert = {
		a = { bg = colors.green, fg = colors.bg, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.bgdark, fg = colors.white },
	},
	visual = {
		a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.bgdark, fg = colors.white },
	},
	replace = {
		a = { bg = colors.red, fg = colors.bg, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.bgdark, fg = colors.white },
	},
	command = {
		a = { bg = colors.blended_purple, fg = colors.purple, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.bgdark, fg = colors.white },
	},
	inactive = {
		a = { bg = colors.bgdark, fg = colors.white, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.bgdark, fg = colors.white },
	},
}
