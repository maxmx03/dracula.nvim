---@class dracula
---@field config dracula.config
---@field setup fun(config: dracula.config)
---@field load fun(theme: string)
local M = {}

M.config = require 'dracula.config'

M.setup = function(config)
  M.config = vim.tbl_deep_extend('force', M.config, config)
end

M.load = function(theme)
  theme = theme or ''
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.g.colors_name = theme
  local highlights = require 'dracula.highlights'
  local ok, colors = pcall(require, 'dracula.palette.' .. theme)

  if not ok then
    colors = require 'dracula.palette'
  end

  highlights.set_highlight(colors, M.config)
end

return M
