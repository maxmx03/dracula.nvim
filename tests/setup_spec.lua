local nvim_get_hl = require('dracula.utils').nvim_get_hl

describe('dracula.setup', function()
  setup(function()
    require('dracula').setup {
      transparent = true,
      on_colors = function()
        return {
          mycolor = '#ffffff',
        }
      end,
      on_highlight = function(colors)
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
end)
