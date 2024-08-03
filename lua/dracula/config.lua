---@class dracula.styles
---@field types? vim.api.keyset.highlight
---@field functions? vim.api.keyset.highlight
---@field parameters? vim.api.keyset.highlight
---@field comments? vim.api.keyset.highlight
---@field strings? vim.api.keyset.highlight
---@field keywords? vim.api.keyset.highlight
---@field variables? vim.api.keyset.highlight
---@field constants? vim.api.keyset.highlight

---@class dracula.config
---@field styles dracula.styles
---@field transparent? boolean
---@field on_highlights? fun(colors: dracula.palette, color: dracula.color): dracula.highlights
---@field on_colors? fun(colors: dracula.palette, color: dracula.color): dracula.palette
return {
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
  on_highlights = nil,
  on_colors = nil,
  plugins = {
    ['nvim-treesitter'] = true,
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
