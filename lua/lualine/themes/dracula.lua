local dracula = require 'dracula'
local colors = dracula.colors

return {
  normal = {
    a = { bg = colors.purple, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.comment, fg = colors.fg },
    c = { bg = colors.bgdark, fg = colors.fg },
  },
  insert = {
    a = { bg = colors.green, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.comment, fg = colors.fg },
    c = { bg = colors.bgdark, fg = colors.fg },
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.comment, fg = colors.fg },
    c = { bg = colors.bgdark, fg = colors.fg },
  },
  replace = {
    a = { bg = colors.red, fg = colors.bg, gui = 'bold' },
    b = { bg = colors.comment, fg = colors.fg },
    c = { bg = colors.bgdark, fg = colors.fg },
  },
  command = {
    a = { bg = colors.blended_purple, fg = colors.purple, gui = 'bold' },
    b = { bg = colors.comment, fg = colors.fg },
    c = { bg = colors.bgdark, fg = colors.fg },
  },
  inactive = {
    a = { bg = colors.bgdark, fg = colors.fg, gui = 'bold' },
    b = { bg = colors.comment, fg = colors.fg },
    c = { bg = colors.bgdark, fg = colors.fg },
  },
}
