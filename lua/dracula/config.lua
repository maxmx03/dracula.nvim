local M = {}

function M:new()
	local config = {
		soft = false,
		transparent = false,
		colors = {},
		user_config = {},
	}

	setmetatable(config, self)
	self.__index = self

	return config
end

function M:set_colors()
	if self.soft then
		self.colors = require("dracula.palettes.soft")
		return
	end

	self.colors = require("dracula.palettes")
end

function M:set_user_colors()
	if self.user_config.colors then
		if vim.tbl_isempty(self.colors) then
			return
		end

		if type(self.user_config.colors) == "table" then
			self.colors = vim.tbl_extend("force", self.colors, self.user_config.colors)
			return
		end

		self.colors = vim.tbl_extend("force", self.colors, self.user_config.colors(self.colors))
	end
end

function M:set_soft(soft)
	if soft then
		self.soft = true
		return
	end

	self.soft = false
end

function M:set_transparent(transparent)
	if transparent then
		self.transparent = true
		return
	end

	self.transparent = false
end

return M
