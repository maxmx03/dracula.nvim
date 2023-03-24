### [Neovim](https://neovim.io)

#### Prerequisits

To install dracula you need a plugin manager.
A plugin manager is a tool that helps users install and manage plugins.
Below is a list of some plugin managers that you could install.

- [lazy.nvim](folke/lazy.nvim) *recommended*
- [packer.nvim](wbthomason/packer.nvim)
- [vim-plug](https://github.com/junegunn/vim-plug)

#### Install using Plugin Manager

Here's an example of how to install dracula using the [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager:

    require('lazy').setup({
       {
        'dracula/nvim',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function ()
        local dracula = require('dracula')

            dracula.setup({})
            -- dracula.setup({ soft = true })

            vim.cmd('colorscheme dracula')
        end
       },
    })

Lazy will install Dracula colorscheme in the following directories:

    DATA DIRECTORY (DEFAULT)  
                  *$XDG_DATA_HOME*              Nvim: stdpath("data")
    Unix:         ~/.local/share              ~/.local/share/nvim/lazy
    Windows:      ~/AppData/Local             ~/AppData/Local/nvim-data/lazy

That's it!
