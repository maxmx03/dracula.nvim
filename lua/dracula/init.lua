local M = {}
require("dracula.autocmd")
local colors = require("dracula.palettes")
local soft_colors = require("dracula.palettes.soft")
local theme = require("dracula.themes")

M.config = {}

M.set_config = function(config)
	if vim.tbl_isempty(M.config) then
		if not config then
			return
		end

		if config.soft then
			M.config.soft = config.soft
		end

		if config.transparent then
			M.config.transparent = config.transparent
		end
	end
end

M.set_transparent = function(c)
	local hl = vim.api.nvim_set_hl

	if M.config.transparent == true then
		hl(0, "Normal", { fg = c.fg, bg = "NONE" })
	end
end

M.setup = function(config)
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.background = "dark"
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "dracula"

	M.set_config(config)

	if M.config and M.config.soft then
		require("dracula.themes.soft").set_highlights(soft_colors)
		M.set_transparent(soft_colors)

		return
	end

	theme.set_highlights(colors)
	M.set_transparent(colors)
end

return M
