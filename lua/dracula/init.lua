local M = {}
require("dracula.autocmd")
local theme = require("dracula.themes")

M.config = {}

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

	if vim.tbl_isempty(M.config) then
		if config and config.soft then
			M.config.soft = config.soft
		end
	end

	if M.config and M.config.soft then
		require("dracula.themes.soft").set_highlights()

		return
	end

	theme.set_highlights()
end

return M
