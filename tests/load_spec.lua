local nvim_get_hl = require('dracula.utils').nvim_get_hl

describe('dracula.load', function()
  setup(function()
    vim.cmd.colorscheme 'dracula'
  end)

  test('name', function()
    local expected = 'dracula'
    assert.equal(expected, vim.g.colors_name)
  end)

  test('palette', function()
    local colors = require 'dracula.palette'
    assert.True(type(colors) == 'table')
  end)

  test('set highlight', function()
    local string = nvim_get_hl 'String'
    local colors = require 'dracula.palette'
    local expected = colors.yellow
    assert.equal(expected, string.fg)
  end)

  test('default config', function()
    local config = require 'dracula.config'
    assert.True(type(config) == 'table')
  end)
end)
