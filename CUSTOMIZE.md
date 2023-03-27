#### How to customize a colorscheme

To override a highlight group, you will need to use the vim.api.nvim_set_hl()
function.
This function allows you to set the colors for a specific highlight group. 
Here's an example of how to use this function to set the color of the 
CursorLineNr highlight group to yellow:

    local colors = require('dracula.palettes')
    -- local colors = require('dracula.palettes.soft')

    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.yellow })

In this example, we first load the dracula color palette into the colors variable. Then, we use vim.api.nvim_set_hl() 
to set the color of the CursorLineNr highlight group to the value of colors.yellow.

#### How to find a Highlight group

To find a highlight group that you want to customize, you can use the `:Inspect command`.
This command shows the current highlight 
groups being applied to the code in the current buffer. Here's how to use it:

Alternatively, you can use plugins like [Telescope](https://github.com/nvim-telescope/telescope.nvim) or 
[Playground](https://github.com/nvim-treesitter/playground) to find the highlight groups you need to customize your colorscheme. 
For example, you can use the `:Telescope highlights` command with the Telescope 
plugin to list all the available highlight 
groups and select the one you want to customize.
