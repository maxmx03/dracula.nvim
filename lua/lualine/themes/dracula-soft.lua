-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- Credit itchyny, jackno (lightline)
local colors = require 'dracula.palette.dracula-soft'

return {
  normal = {
    a = { bg = colors.purple, fg = colors.base03, gui = 'bold' },
    b = { bg = colors.base01, fg = colors.base0 },
    c = { bg = colors.base02, fg = colors.base0 },
  },
  insert = {
    a = { bg = colors.green, fg = colors.base03, gui = 'bold' },
    b = { bg = colors.base01, fg = colors.base0 },
    c = { bg = colors.base02, fg = colors.base0 },
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.base03, gui = 'bold' },
    b = { bg = colors.base01, fg = colors.base0 },
    c = { bg = colors.base02, fg = colors.base0 },
  },
  replace = {
    a = { bg = colors.red, fg = colors.base03, gui = 'bold' },
    b = { bg = colors.base01, fg = colors.base0 },
    c = { bg = colors.base02, fg = colors.base0 },
  },
  command = {
    a = { bg = colors.orange, fg = colors.base03, gui = 'bold' },
    b = { bg = colors.base01, fg = colors.base0 },
    c = { bg = colors.base02, fg = colors.base0 },
  },
  inactive = {
    a = { bg = colors.base02, fg = colors.base0, gui = 'bold' },
    b = { bg = colors.base01, fg = colors.base0 },
    c = { bg = colors.base02, fg = colors.base0 },
  },
}
