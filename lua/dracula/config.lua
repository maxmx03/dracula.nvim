---@class dracula.config
---@field transparent? boolean
---@field on_highlights? fun(colors: dracula.palette, color: table): dracula.highlights
---@field on_colors? fun(colors: dracula.palette, color: table): dracula.palette
return {
  transparent = false,
  on_highlights = nil,
  on_colors = nil,
  plugins = {
    ['nvim-treesitter'] = true,
    ['nvim-cmp'] = true,
    ['indent-blankline.nvim'] = true,
    ['bufferline.nvim'] = true,
  },
}
