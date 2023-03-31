require("dracula.autocmd")
local theme = require("dracula.theme")
local Config = require("dracula.config")
local M = Config:new()

function M:apply_transparency()
	local hl = vim.api.nvim_set_hl
	local c = self.colors

	hl(0, "Normal", { fg = c.fg, bg = "NONE" })
	hl(0, "SignColumn", { fg = "NONE", bg = "NONE" })
	hl(0, "CursorLineNr", { fg = c.pink, bg = "NONE" })
	hl(0, "LineNr", { fg = c.comment, bg = "NONE" })
end

function M.load_default()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.background = "dark"
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "dracula"
end

M.setup = function(user_config)
	M.load_default()
	user_config = user_config or {}

	if vim.tbl_isempty(M.user_config) then
		M.user_config = user_config
	else
		M:set_soft(M.user_config.soft)
		M:set_transparent(M.user_config.transparent)
    M:set_colors()
    M:set_user_colors()
	end

	theme.set_highlights(M.colors)
end

return M
