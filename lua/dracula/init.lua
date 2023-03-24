local M = {}
require("dracula.autocmd")
local theme = require("dracula.theme")

M.setup = function()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.background = "dark"
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "dracula"

  theme.set_highlights()
end

return M

