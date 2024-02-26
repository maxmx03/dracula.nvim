---@class dracula.config
---@field transparent? boolean
---@field on_highlights? fun(colors: dracula.palette, color: dracula.color): dracula.highlights
---@field on_colors? fun(colors: dracula.palette, color: dracula.color): dracula.palette
return {
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
  },
}
