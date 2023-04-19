#### Configuration

The dracula.nvim theme can be configured using the following options:

| Name        | type             | values                           | Description                                                                            |
| ----------- | ---------------- | -------------------------------- | -------------------------------------------------------------------------------------- |
| soft        | boolean          | true, false                      | enable soft version of dracula theme                                                   |
| transparent | boolean, string  | true, false, "full"              | change background to transparent                                                       |
| saturation  | table            | { enabled = false, amount = 10 } | change colorscheme saturation colors                                                   |
| dracula_pro | plugin           | require('draculapro')            | give support for [dracula pro](https://draculatheme.com/pro) theme inside dracula.nvim |
| override    | table / function | {}                               | update or create highlight groups                                                      |
| callback    | function         | function                         | alternative to override, for customize colorscheme                                     |

#### How to customize [telescope](https://github.com/nvim-telescope/telescope.nvim)

```lua
local dracula = require 'dracula'

function custom(c)
    return {
      TelescopeResultsBorder = { fg = c.bgdark, bg = c.bgdark },
      TelescopeResultsNormal = { bg = c.bgdark },
      TelescopePreviewNormal = { bg = c.bg },
      TelescopePromptBorder = { fg = c.bgdark, bg = c.bgdark },
      TelescopeTitle = { fg = c.fg, bg = c.comment },
      TelescopePromptPrefix = { fg = c.purple },
    }
end

dracula.setup {
 soft = false,
 transparent = false,
 saturation = {
    enabled = false,
    amount = 10,
 },
 override = custom,
 callback = function (c)
    vim.api.nvim_set_hl(0, 'CmpItemKindBorder', { link = 'WinSeparator' })
 end
}

vim.cmd.colorscheme 'dracula'
```

#### How to customize [cmp](https://github.com/hrsh7th/nvim-cmp)

```lua
local dracula = require 'dracula'

dracula.setup {
 override = {
   CmpItemKindText = { reverse = true },
   CmpItemKindMethod = { reverse = true },
   CmpItemKindFunction = { reverse = true },
   CmpItemKindConstructor = { reverse = true },
   CmpItemKindField = { reverse = true },
   CmpItemKindVariable = { reverse = true },
   CmpItemKindClass = { reverse = true },
   CmpItemKindInterface = { reverse = true },
   CmpItemKindModule = { reverse = true },
   CmpItemKindProperty = { reverse = true },
   CmpItemKindUnit = { reverse = true },
   CmpItemKindValue = { reverse = true },
   CmpItemKindEnum = { reverse = true },
   CmpItemKindKeyword = { reverse = true },
   CmpItemKindSnippet = { reverse = true },
   CmpItemKindColor = { reverse = true },
   CmpItemKindFile = { reverse = true },
   CmpItemKindReference = { reverse = true },
   CmpItemKindFolder = { reverse = true },
   CmpItemKindEnumMember = { reverse = true },
   CmpItemKindConstant = { reverse = true },
   CmpItemKindStruct = { reverse = true },
   CmpItemKindEvent = { reverse = true },
   CmpItemKindOperator = { reverse = true },
   CmpItemKindTypeParameter = { reverse = true },
   CmpItemKindBorder = { fg = c.float_bg, bg = c.float_bg },
 },
}
```

```lua
local function border(hl_name)
    return {
       { '╭', hl_name },
       { '─', hl_name },
       { '╮', hl_name },
       { '│', hl_name },
       { '╯', hl_name },
       { '─', hl_name },
       { '╰', hl_name },
       { '│', hl_name },
    }
end

cmp.setup {
  window = {
   completion = {
     border = border 'CmpItemKindBorder'
   },
   documentation = {
    border = border 'CmpItemKindBorder'
   }
 }
}
```

#### How to change styles

```lua
local dracula = require 'dracula'

dracula.setup {
 override = {
   ['@type'] = { italic = true, bold = false },
   ['@function'] = { italic = false, bold = false },
   ['@comment'] = { italic = true },
   ['@keyword'] = { italic = false },
   ['@constant'] = { italic = false, bold = false },
   ['@variable'] = { italic = true },
   ['@field'] = { italic = true },
   ['@parameter'] = { italic = true },
 }
}

vim.cmd 'colorscheme dracula'
```

#### How to customize Dracula colors

```lua
local dracula = require 'dracula'

dracula.setup {
 colors = {
  bg = '#color',
  bgdark = '#color',
 }
}

vim.cmd.colorscheme 'dracula'
```

#### How to find a Highlight group

To find a highlight group that you want to customize, you can use the `:Inspect` command.
This command shows the current highlight
groups being applied to the code in the current buffer. Here's how to use it:

Alternatively, you can use plugins like [Telescope](https://github.com/nvim-telescope/telescope.nvim) or
[Playground](https://github.com/nvim-treesitter/playground) to find the highlight groups you need to customize your colorscheme.
For example, you can use the `:Telescope highlights` command with the Telescope
plugin to list all the available highlight
groups and select the one you want to customize.
