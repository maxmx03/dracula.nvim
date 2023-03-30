#### How to customize a colorscheme

To override a highlight group, you will need to use the vim.api.nvim_set_hl()
function.
This function allows you to set the colors for a specific highlight group. 
Here's an example of how to use this function to set the color of the 
CursorLineNr highlight group to yellow:

```lua
local colors = require('dracula.palettes')
-- local colors = require('dracula.palettes.soft')

vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.yellow })
```
In this example, we first load the dracula color palette into the colors variable. Then, we use vim.api.nvim_set_hl() 
to set the color of the CursorLineNr highlight group to the value of colors.yellow.

Another example, let's change the background and the float window background colors.

```lua
local colors = require('dracula.palettes')
-- local colors = require('dracula.palettes.soft')

local custom_colors = {
    bg = '#283630', -- similar to dracula pro bg color but not the same
    float_bg = '#202b26',
}

vim.api.nvim_set_hl(0, 'Normal', { fg = colors.fg, bg = custom_colors.bg })

-- we need to change linenr,cusorlinenr, signcolumn to match the background
vim.api.nvim_set_hl(0, 'LineNr', { fg = colors.comment, bg = custom_colors.bg })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.yellow, bg = custom_colors.bg })
vim.api.nvim_set_hl(0, 'SignColumn', { fg = 'NONE', bg = custom_colors.bg })

-- now let's change the float window background colors
vim.api.nvim_set_hl(0, 'NormalFloat', { fg = colors.fg, bg = custom_colors.float_bg })

-- of course, we need to change the WinSeparator background color to match the NormalFloat bg
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = colors.comment, bg = custom_colors.float_bg })
```

#### How to find a Highlight group

To find a highlight group that you want to customize, you can use the `:Inspect command`.
This command shows the current highlight 
groups being applied to the code in the current buffer. Here's how to use it:

Alternatively, you can use plugins like [Telescope](https://github.com/nvim-telescope/telescope.nvim) or 
[Playground](https://github.com/nvim-treesitter/playground) to find the highlight groups you need to customize your colorscheme. 
For example, you can use the `:Telescope highlights` command with the Telescope 
plugin to list all the available highlight 
groups and select the one you want to customize.
