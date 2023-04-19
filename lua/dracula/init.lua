require("dracula.autocmd")
local utils = require("dracula.utils")
local theme = require("dracula.theme")
local Config = require("dracula.config")
local M = Config:new()

function M:apply_transparency()
  local groups = {
    Normal = { bg = "NONE" },
    SignColumn = { bg = "NONE" },
    CursorLineNr = { bg = "NONE" },
    LineNr = { bg = "NONE" },
  }

  if self.transparent then
    if self.transparent == "full" then
      groups = vim.tbl_extend("keep", groups, { NormalFloat = "NONE" })
    end

    return groups
  end
end

function M:support_draculapro()
  local c = self.colors

  if not self.dracula_pro then
    return
  end

  return {
    Directory = { fg = c.comment },
    TelescopeTitle = { fg = c.fg, bg = c.comment },
    CursorLineNr = { fg = c.fg },
  }
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

  M:set_soft(M.user_config.soft.enabled)
  M:set_transparent(M.user_config.transparent)
  M:set_draculapro(M.user_config.dracula_pro)
  M:set_colors()
  M:set_user_colors()

  theme.set_highlights(M.colors)

  if type(M.user_config.override) == "function" then
    M.user_config.override = M.user_config.override(M.colors)
  end

  utils.update_highlight_groups(M.user_config.override)
  utils.update_highlight_groups(M:apply_transparency())
  utils.update_highlight_groups(M:support_draculapro())
  M:call_user_callback(M.user_config.callback)
end

return M
