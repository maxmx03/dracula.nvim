local nvim_get_hl = require('dracula.utils').nvim_get_hl
local colors = require 'dracula.palette'

describe('dracula.setup', function()
  setup(function()
    require('dracula').setup {
      transparent = true,
      on_colors = function()
        return {
          yellow = '#ffffff',
        }
      end,
      on_highlight = function()
        return {
          Type = { bg = '#ffffff' },
        }
      end,
    }
    vim.cmd 'colorscheme dracula'
  end)

  test('transparent', function()
    local normal = nvim_get_hl 'Normal'
    assert.falsy(normal.bg)
  end)

  test('on_colors', function()
    local expected = nvim_get_hl('Function').fg
    assert.True(expected ~= colors.yellow)
  end)

  test('on_highlight', function()
    local user_group = nvim_get_hl 'Type'
    local expected = { fg = colors.cyan, bg = '#FFFFFF' }
    assert.are.same(expected, user_group)
  end)

  test('plugins', function()
    local treesitter = nvim_get_hl '@variable'
    print(vim.inspect(treesitter), 'treesitter')
    assert.equals(colors.base0, treesitter.fg)
    assert.True(colors.base0 == treesitter.fg)
  end)
end)
