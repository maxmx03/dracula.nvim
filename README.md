# dracula

Lorem ipsum dolor sit amet, officia excepteur ex fugiat reprehenderit enim
labore culpa sint ad nisi Lorem pariatur.

## Installation

```json
{
  "workspace": {
    "library": [
      "~/.local/share/nvim/lazy/dracula"
    ],
  },
}
```

```lua
return {
  {
    'maxmx03/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function ()
      ---@type dracula
      require "dracula".setup({
      transparent = false,
      on_colors = function (colors, color)
        ---@type dracula.palette
        return {
          -- override or create new colors
          mycolor = "#ffffff",
        }
      end,
      on_highlights = function (colors, color)
        ---@type dracula.highlights
        return {
          ---@type vim.api.keyset.highlight
          Normal = { fg = colors.mycolor }
        }
      end,
      plugins = {
        ["nvim-treesitter"] = true,
        ["nvim-lspconfig"] = true,
        ["nvim-navic"] = true,
        ["nvim-cmp"] = true,
        ["indent-blankline.nvim"] = true,
        ["bufferline.nvim"] = true,
        ["neo-tree.nvim"] = true,
        ["nvim-tree.lua"] = true,
        ["which-key.nvim"] = true,
        ["dashboard-nvim"] = true,
        ["gitsigns.nvim"] = true,
        ["neogit"] = true,
        ["todo-comments.nvim"] = true,
        ["lazy.nvim"] = true,
        ["telescope.nvim"] = true,
      }
      })
      vim.cmd.colorscheme 'dracula'
    end
  }
}
```

## Api

```lua
local colors = require 'dracula.colors'
local color = require 'dracula.color'
local darken = color.darken
local lighten = color.lighten
local blend = color.blend
local shade = color.shade
local tint = color.tint

-- example 1: get shades
for i = 1, 10, 1 do
    print(shade(colors.yellow, i))
end

for i = 1, 100, 10 do
    print(darken(colors.yellow, i))
end

-- example 2: get tints
for i = 1, 10, 1 do
    print(tint(colors.yellow, i))
end

for i = 1, 100, 10 do
    print(lighten(colors.yellow, i))
end

-- example 3: blend color
local new_color = blend(colors.yellow, colors.base03, 0.2)
```
