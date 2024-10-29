---@class dracula
---@field config dracula.config
---@field setup fun(config: dracula.config)
---@field load fun(theme: string)
local M = {}

M.config = require 'dracula.config'

---@param config? dracula.config
M.setup = function(config)
  M.config = vim.tbl_deep_extend('force', M.config, config or {})
end

return M
