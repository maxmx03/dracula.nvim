local nvim_get_hl = require('dracula.utils').nvim_get_hl

describe('dracula.setup', function()
  setup(function()
    ---@type dracula
    local dracula = require 'dracula'

    dracula.setup {
      transparent = true,
      styles = {
        Comment = { italic = true },
      },
      on_colors = function()
        return {
          mycolor = 0xffffff,
        }
      end,
      on_highlights = function(colors)
        return {
          CustomHighlight = { fg = colors.mycolor },
        }
      end,
    }
    vim.cmd 'colorscheme dracula'
  end)

  test('transparent', function()
    local normal = nvim_get_hl 'Normal'
    assert.falsy(normal.bg)
  end)

  test('on_colors and on_highlight', function()
    local user_group = nvim_get_hl 'CustomHighlight'
    local expected = { fg = '#FFFFFF' }
    assert.are.same(expected, user_group)
  end)

  test('styles', function()
    local comment = nvim_get_hl 'Comment'
    local colors = require 'dracula.palette'
    local expected = { italic = true, fg = colors.base01, cterm = { italic = true } }
    assert.are.same(expected, comment)
  end)
end)
