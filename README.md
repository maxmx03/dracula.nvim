# Dracula

> Created with [schemecraft](https://github.com/maxmx03/schemecraft)

![Screenshot](https://user-images.githubusercontent.com/50273941/227779719-6e003e4a-f8e8-40bc-8a9f-ebfd7ea13fe6.png)

## Installation

To install Dracula, you need a plugin manager. \
In the example, bellow we are going to use lazy.nvim for neovim \
and vim-plug for vim.

### Neovim

Annotations can be enabled. \
Below is an example of how to enable them.

```lua
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      workspace = {
        checkThirdParty = true,
        library = {
          vim.env.VIMRUNTIME,
          '~/.local/share/nvim/lazy/dracula.nvim',
        },
      },
      -- other settings ...
    },
  },
  capabilities = capabilities,
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
      local dracula = require "dracula"

      dracula.setup({
      styles = {
        types = {},
        functions = {},
        parameters = {},
        comments = {},
        strings = {},
        keywords = {},
        variables = {},
        constants = {},
      },
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
        ["rainbow-delimiters"] = true,
        ["nvim-lspconfig"] = true,
        ["nvim-navic"] = true,
        ["nvim-cmp"] = true,
        ["indent-blankline.nvim"] = true,
        ["neo-tree.nvim"] = true,
        ["nvim-tree.lua"] = true,
        ["which-key.nvim"] = true,
        ["dashboard-nvim"] = true,
        ["gitsigns.nvim"] = true,
        ["neogit"] = true,
        ["todo-comments.nvim"] = true,
        ["lazy.nvim"] = true,
        ["telescope.nvim"] = true,
        ["noice.nvim"] = true,
        ["hop.nvim"] = true,
        ["mini.statusline"] = true,
        ["mini.tabline"] = true,
        ["mini.starter"] = true,
        ["mini.cursorword"] = true,
        ['bufferline.nvim'] = true,
      }
      })
      vim.cmd.colorscheme 'dracula'
      vim.cmd.colorscheme 'dracula-soft'
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = vim.g.colors_name,
        refresh = {
          statusline = 1000,
        },
      },
    },
  }
}
```

### Vim

```vim
Plug 'maxmx03/dracula.nvim', { 'branch': 'vim' }
colorscheme dracula
colorscheme dracula-soft
```

## Api

The Dracula provides methods for working with colors. Here are some examples:

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
