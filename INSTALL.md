### [Neovim](https://neovim.io)

#### Prerequisits

To install dracula you need a plugin manager.
A plugin manager is a tool that helps users install and manage plugins.
Below is a list of some plugin managers that you could install.

- [lazy.nvim](folke/lazy.nvim) _recommended_
- [packer.nvim](wbthomason/packer.nvim)
- [vim-plug](https://github.com/junegunn/vim-plug)

#### Install using Plugin Manager

Here's an example of how to install dracula using the [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager:

```lua
 require('lazy').setup({
       {
        'maxmx03/dracula.nvim',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function ()
        local dracula = require('dracula')

            dracula.setup({})

            vim.cmd('colorscheme dracula')
        end
       },
    })
```

#### Configuration

The dracula.nvim theme can be configured using the following options:

`soft`

- Type: boolean
- Default: false

Set this option to true to enable the soft version of the Dracula color palette, which has reduced color saturation.
Set it to false to use the original, more vibrant colors.

`transparent`

- Type: boolean
- Default: false

`colors`

- Type: table or callback(colors: table)
- Default: dracula colors

`callback`

- Type: callback(colors: table)

`override`

- Type: table

```lua
local dracula = require('dracula')
local colors = require('dracula.palettes')

dracula.setup({
    soft = false,
    transparent = false
    colors = function (colors)
      return {
        error = colors.purple,
      }
    end,
    override = {
     ['@function'] = { fg = colors.cyan, italic = true, bold = false }
    },
    callback = function (colors)
     vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.yellow })
    end
})
```

Lazy will install Dracula colorscheme in the following directories:

    DATA DIRECTORY (DEFAULT)
                  *$XDG_DATA_HOME*              Nvim: stdpath("data")
    Unix:         ~/.local/share              ~/.local/share/nvim/lazy
    Windows:      ~/AppData/Local             ~/AppData/Local/nvim-data/lazy

That's it!
