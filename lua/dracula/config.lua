---@class dracula.styles
---@field Type? vim.api.keyset.highlight
---@field Function? vim.api.keyset.highlight
---@field Parameter? vim.api.keyset.highlight
---@field Property? vim.api.keyset.highlight
---@field Comment? vim.api.keyset.highlight
---@field String? vim.api.keyset.highlight
---@field Keyword? vim.api.keyset.highlight
---@field Identifier? vim.api.keyset.highlight
---@field Constant? vim.api.keyset.highlight

---@class dracula.config
---@field styles? dracula.styles
---@field transparent? boolean
---@field on_highlights? fun(colors: dracula.palette, color: dracula.color): dracula.highlights
---@field on_colors? fun(colors: dracula.palette, color: dracula.color): dracula.palette
return {
  styles = {
    Type = {},
    Function = {},
    Parameter = {},
    Property = {},
    Comment = {
      italic = true,
    },
    String = {},
    Keyword = {},
    Identifier = {},
    Constant = {},
  },
  transparent = false,
  on_highlights = nil,
  on_colors = nil,
  plugins = {
    ['nvim-treesitter'] = true,
    ['rainbow-delimiters'] = true,
    ['nvim-lspconfig'] = true,
    ['nvim-navic'] = true,
    ['nvim-cmp'] = true,
    ['indent-blankline.nvim'] = true,
    ['neo-tree.nvim'] = true,
    ['nvim-tree.lua'] = true,
    ['which-key.nvim'] = true,
    ['dashboard-nvim'] = true,
    ['gitsigns.nvim'] = true,
    ['neogit'] = true,
    ['todo-comments.nvim'] = true,
    ['lazy.nvim'] = true,
    ['telescope.nvim'] = true,
    ['noice.nvim'] = true,
    ['hop.nvim'] = true,
    ['mini.statusline'] = true,
    ['mini.tabline'] = true,
    ['mini.starter'] = true,
    ['mini.cursorword'] = true,
    ['bufferline.nvim'] = true,
  },
}
