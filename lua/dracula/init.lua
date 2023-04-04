require("dracula.autocmd")
local theme = require("dracula.theme")
local Config = require("dracula.config")
local M = Config:new()

function M:apply_transparency()
	if self.transparent then
		local hl = vim.api.nvim_set_hl
		local c = self.colors

		hl(0, "Normal", { fg = c.fg, bg = "NONE" })
		hl(0, "SignColumn", { fg = "NONE", bg = "NONE" })
		hl(0, "CursorLineNr", { fg = c.pink, bg = "NONE" })
		hl(0, "LineNr", { fg = c.comment, bg = "NONE" })
	end
end

function M:apply_user_highlight(groups)
	if not groups then
		return
	end

	local function get_hl(group_name)
		local group = vim.api.nvim_get_hl(0, { name = group_name })

		if type(group) == "table" then
			if type(group.link) == "string" then
				return get_hl(group.link)
			end

			return group
		end

		return nil
	end

	for group_name, val in pairs(groups) do
		local group_val = get_hl(group_name)

		if type(group_val) == "table" then
			local value = vim.tbl_extend("force", group_val, val)

			vim.api.nvim_set_hl(0, group_name, value)
		end
	end
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

	if vim.tbl_isempty(M.user_config) then
		M.user_config = user_config or {}
	end

	M:set_soft(M.user_config.soft)
	M:set_transparent(M.user_config.transparent)
	M:set_colors()
	M:set_user_colors()

	theme.set_highlights(M.colors)
	M:apply_transparency()
	M:apply_user_highlight(M.user_config.override)
	M:call_user_callback(M.user_config.callback)
end

return M
