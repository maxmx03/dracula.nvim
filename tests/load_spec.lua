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

  test('default config', function()
    local config = require 'dracula.config'
    assert.True(type(config) == 'table')
  end)

  test('set_highlight', function()
    local Comment = nvim_get_hl 'Comment'
    assert.True('#6272A4' == Comment.fg)

    local Constant = nvim_get_hl 'Constant'
    assert.True('#BD93F9' == Constant.fg)

    local String = nvim_get_hl 'String'
    assert.True('#F1FA8C' == String.fg)

    local Character = nvim_get_hl 'Character'
    assert.True('#F1FA8C' == Character.fg)

    local Number = nvim_get_hl 'Number'
    assert.True('#BD93F9' == Number.fg)

    local Boolean = nvim_get_hl 'Boolean'
    assert.True('#BD93F9' == Boolean.fg)

    local Float = nvim_get_hl 'Float'
    assert.True('#BD93F9' == Float.fg)

    local Identifier = nvim_get_hl 'Identifier'
    assert.True('#F8F8F2' == Identifier.fg)

    local Function = nvim_get_hl 'Function'
    assert.True('#50FA7A' == Function.fg)

    local Statement = nvim_get_hl 'Statement'
    assert.True('#FF79C6' == Statement.fg)

    local Conditional = nvim_get_hl 'Conditional'
    assert.True('#FF79C6' == Conditional.fg)

    local Repeat = nvim_get_hl 'Repeat'
    assert.True('#FF79C6' == Repeat.fg)

    local Label = nvim_get_hl 'Label'
    assert.True('#FF79C6' == Label.fg)

    local Operator = nvim_get_hl 'Operator'
    assert.True('#FF79C6' == Operator.fg)

    local Keyword = nvim_get_hl 'Keyword'
    assert.True('#FF79C6' == Keyword.fg)

    local Exception = nvim_get_hl 'Exception'
    assert.True('#FF79C6' == Exception.fg)

    local PreProc = nvim_get_hl 'PreProc'
    assert.True('#FF79C6' == PreProc.fg)

    local Include = nvim_get_hl 'Include'
    assert.True('#FF79C6' == Include.fg)

    local Define = nvim_get_hl 'Define'
    assert.True('#FF79C6' == Define.fg)

    local Macro = nvim_get_hl 'Macro'
    assert.True('#FF79C6' == Macro.fg)

    local PreCondit = nvim_get_hl 'PreCondit'
    assert.True('#FF79C6' == PreCondit.fg)

    local Type = nvim_get_hl 'Type'
    assert.True('#8BE9FD' == Type.fg)

    local StorageClass = nvim_get_hl 'StorageClass'
    assert.True('#FF79C6' == StorageClass.fg)

    local Structure = nvim_get_hl 'Structure'
    assert.True('#8BE9FD' == Structure.fg)

    local Typedef = nvim_get_hl 'Typedef'
    assert.True('#FF79C6' == Typedef.fg)

    local Special = nvim_get_hl 'Special'
    assert.True('#FF5555' == Special.fg)

    local SpecialChar = nvim_get_hl 'SpecialChar'
    assert.True('#BD93F9' == SpecialChar.fg)

    local Tag = nvim_get_hl 'Tag'
    assert.True('#FF79C6' == Tag.fg)

    local Delimiter = nvim_get_hl 'Delimiter'
    assert.True('#F8F8F2' == Delimiter.fg)

    local SpecialComment = nvim_get_hl 'SpecialComment'
    assert.True('#FF79C6' == SpecialComment.fg)

    local Debug = nvim_get_hl 'Debug'
    assert.True('#FF79C6' == Debug.fg)

    local Underlined = nvim_get_hl 'Underlined'
    assert.True('#8BE9FD' == Underlined.fg)

    local Ignore = nvim_get_hl 'Ignore'
    local Error = nvim_get_hl 'Error'
    assert.True('#FF5555' == Error.fg)

    local Todo = nvim_get_hl 'Todo'
    assert.True('#BD93F9' == Todo.fg)
  end)
end)
