require("dracula.autocmd")
local utils = require("dracula.utils")
local theme = require("dracula.theme")
local Config = require("dracula.config")
local M = Config:new()

function M:apply_transparency()
	if self.transparent then
		return {
			Normal = { bg = "NONE" },
			SignColumn = { bg = "NONE" },
			CursorLineNr = { bg = "NONE" },
			LineNr = { bg = "NONE" },
		}
	end
end

function M.load_default()
	vim.cmd("hi clear")

	vim.o.background = "dark"
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "dracula"
end

M.setup = function(user_config)
	if vim.g.colors_name ~= "dracula" then
		M.load_default()

		if vim.tbl_isempty(M.user_config) then
			M.user_config = user_config or {}
		end

		M:set_soft(M.user_config.soft)
		M:set_transparent(M.user_config.transparent)
		M:set_colors()
		M:set_user_colors()

		theme.set_highlights(M.colors)

		if type(M.user_config.override) == "function" then
			M.user_config.override = M.user_config.override(M.colors)
		end

		utils.update_highlight_groups(M.user_config.override)
		utils.update_highlight_groups(M:apply_transparency())
		M:call_user_callback(M.user_config.callback)
	end
end

return M
