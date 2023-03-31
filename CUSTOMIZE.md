##### How to customize Dracula

To override a highlight group, you will need to use the 
vim.api.nvim_set_hl() function. 
This function allows you to set the colors for a specific highlight group.
Here's an example of how to use this function to set the color 
of the CursorLineNr highlight group to yellow:

```lua
local dracula = require 'dracula'

dracula.setup {
 callback = function (colors)
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.yellow })
 end
}

vim.cmd 'colorscheme dracula'
```

![example1](https://user-images.githubusercontent.com/50273941/228698201-4a8a57fd-51e6-473a-aecd-4771cd07ad6f.png)

#### How to customize Dracula colors

In the previous example, we used the nvim_set_hl function 
to change the CursorLineNr color. In this example, 
we are overriding Dracula colors to change the background color:

```lua
local dracula = require 'dracula'

dracula.setup {
 colors = {
  bg = '#283630',
  float_bg = '#202b26',
 }
}

vim.cmd 'colorscheme dracula'
```

![example2](https://user-images.githubusercontent.com/50273941/228698426-6acd98f2-bc11-45a7-b217-744389265730.png)

#### Customize colors

#### How to find a Highlight group

To find a highlight group that you want to customize, you can use the `:Inspect command`.
This command shows the current highlight
groups being applied to the code in the current buffer. Here's how to use it:

Alternatively, you can use plugins like [Telescope](https://github.com/nvim-telescope/telescope.nvim) or
[Playground](https://github.com/nvim-treesitter/playground) to find the highlight groups you need to customize your colorscheme.
For example, you can use the `:Telescope highlights` command with the Telescope
plugin to list all the available highlight
groups and select the one you want to customize.
