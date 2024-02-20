---@class dracula.highlights
---@field ColorColumn table
---@field Conceal table
---@field CurSearch table
---@field Cursor table
---@field lCursor table
---@field CursorIM table
---@field CursorColumn table
---@field CursorLine table
---@field Directory table
---@field DiffAdd table
---@field DiffChange table
---@field DiffDelete table
---@field DiffText table
---@field EndOfBuffer table
---@field TermCursor table
---@field TermCursorNC table
---@field ErrorMsg table
---@field WinSeparator table
---@field Folded table
---@field FoldColumn table
---@field SignColumn table
---@field IncSearch table
---@field Substitute table
---@field LineNr table
---@field LineNrAbove table
---@field LineNrBelow table
---@field CursorLineNr table
---@field CursorLineFold table
---@field CursorLineSign table
---@field MatchParen table
---@field ModeMsg table
---@field MsgArea table
---@field MsgSeparator table
---@field MoreMsg table
---@field NonText table
---@field Normal table
---@field NormalFloat table
---@field FloatBorder table
---@field FloatTitle table
---@field NormalNC table
---@field Pmenu table
---@field PmenuSel table
---@field PmenuKind table
---@field PmenuKindSel table
---@field PmenuExtra table
---@field PmenuExtraSel table
---@field PmenuSbar table
---@field PmenuThumb table
---@field Question table
---@field QuickFixLine table
---@field Search table
---@field SpecialKey table
---@field SpellBad table
---@field SpellCap table
---@field SpellLocal table
---@field SpellRare table
---@field StatusLine table
---@field StatusLineNC table
---@field TabLine table
---@field TabLineFill table
---@field TabLineSel table
---@field Title table
---@field Visual table
---@field VisualNOS table
---@field warningMsg table
---@field Whitespace table
---@field WildMenu table
---@field WinBar table
---@field WinBarNC table
---@field Comment table
---@field Constant table
---@field String table
---@field Character table
---@field Number table
---@field Boolean table
---@field Float table
---@field Identifier table
---@field Function table
---@field Statement table
---@field Conditional table
---@field Repeat table
---@field Label table
---@field Operator table
---@field Keyword table
---@field Exception table
---@field PreProc table
---@field Include table
---@field Define table
---@field Macro table
---@field PreCondit table
---@field Type table
---@field StorageClass table
---@field Structure table
---@field Typedef table
---@field Special table
---@field SpecialChar table
---@field Tag table
---@field Delimiter table
---@field SpecialComment table
---@field Debug table
---@field Underlined table
---@field Ignore table
---@field Error table
---@field Todo table
---@field CmpItemKindText table
---@field CmpItemKindMethod table
---@field CmpItemKindFunction table
---@field CmpItemKindField table
---@field CmpItemKindVariable table
---@field CmpItemKindClass table
---@field CmpItemKindInterface table
---@field CmpItemKindModule table
---@field CmpItemKindProperty table
---@field CmpItemKindUnity table
---@field CmpItemKindEnum table
---@field CmpItemKindKeyword table
---@field CmpItemKindSnippet table
---@field CmpItemKindColor table
---@field CmpItemKindFile table
---@field CmpItemKindReference table
---@field CmpItemKindFolder table
---@field CmpItemKindEnumMember table
---@field CmpItemKindConstant table
---@field CmpItemKindStruct table
---@field CmpItemKindEvent table
---@field CmpItemKindOperator table
---@field CmpItemKindTypeParameter table
---@field IblIndent table
---@field IblScope table
---@field BufferLineSeparator table
---@field BufferLineSeparatorSelected table
---@field BufferLineBufferSelected table
---@field BufferLineFill table
---@field BufferLineIndicatorSelected table

local M = {}

local function nvim_get_hl(opts)
  local hl = vim.api.nvim_get_hl(0, opts)

  if hl.link then
    return nvim_get_hl { name = hl.link }
  end

  return hl
end

local nvim_set_hl = function(group_name, group_val, config)
  local val = { fg = 'NONE', bg = 'NONE' }

  if not group_val.link then
    if config and config.transparent then
      group_val.bg = 'NONE'
    end
    val = vim.tbl_extend('force', val, group_val)
    vim.api.nvim_set_hl(0, group_name, val)
  else
    vim.api.nvim_set_hl(0, group_name, group_val)
  end
end

M.set_highlight = function(colors, config)
  if config.on_colors then
    colors = vim.tbl_extend('force', colors, config.on_colors(colors))
  end
  -- EDITOR :h highlight-groups
  nvim_set_hl('ColorColumn', { bg = colors.base04 })
  nvim_set_hl('Conceal', { fg = colors.base02 })
  nvim_set_hl('CurSearch', { fg = colors.cyan })
  nvim_set_hl('Cursor', { fg = colors.base03, bg = colors.cyan })
  nvim_set_hl('lCursor', { link = 'Cursor' })
  nvim_set_hl('CursorIM', { link = 'Cursor' })
  nvim_set_hl('CursorColumn', { link = 'ColorColumn' })
  nvim_set_hl('CursorLine', { bg = colors.base02 })
  nvim_set_hl('Directory', { fg = colors.purple })
  nvim_set_hl('DiffAdd', { fg = colors.git_added })
  nvim_set_hl('DiffChange', { fg = colors.git_modified })
  nvim_set_hl('DiffDelete', { fg = colors.git_removed, reverse = true })
  nvim_set_hl('DiffText', { fg = colors.cyan, reverse = true })
  nvim_set_hl('EndOfBuffer', { fg = colors.base03 })
  nvim_set_hl('TermCursor', { link = 'Cursor' })
  nvim_set_hl('TermCursorNC', { fg = colors.base0, reverse = true })
  nvim_set_hl('ErrorMsg', { fg = colors.diag_error })
  nvim_set_hl('WinSeparator', { fg = colors.base01, bg = colors.base04 })
  nvim_set_hl('Folded', { fg = colors.base0, bg = colors.base02 })
  nvim_set_hl('FoldColumn', { fg = colors.base0, bg = colors.base04 })
  nvim_set_hl('SignColumn', { link = 'Normal' })
  nvim_set_hl('IncSearch', { fg = colors.cyan, bg = colors.base04, bold = true }, config)
  nvim_set_hl('Substitute', { link = 'IncSearch' })
  nvim_set_hl('LineNr', { fg = colors.base01, bg = colors.base03 }, config)
  nvim_set_hl('LineNrAbove', { link = 'LineNr' })
  nvim_set_hl('LineNrBelow', { link = 'LineNr' })
  nvim_set_hl('CursorLineNr', { fg = colors.purple, bg = colors.base03 }, config)
  nvim_set_hl('CursorLineFold', { link = 'FoldColumn' })
  nvim_set_hl('CursorLineSign', { link = 'SignColumn' })
  nvim_set_hl('MatchParen', { fg = colors.cyan })
  nvim_set_hl('ModeMsg', { fg = colors.purple })
  nvim_set_hl('MsgArea', { link = 'Normal' })
  nvim_set_hl('MsgSeparator', { link = 'Normal' })
  nvim_set_hl('MoreMsg', { link = 'ModeMsg' })
  nvim_set_hl('NonText', { fg = colors.base01 })
  nvim_set_hl('Normal', { fg = colors.base0, bg = colors.base03 }, config)
  nvim_set_hl('NormalFloat', { fg = colors.base0, bg = colors.base04 })
  nvim_set_hl('FloatBorder', { link = 'WinSeparator' })
  nvim_set_hl('FloatTitle', { link = 'Title' })
  nvim_set_hl('NormalNC', { link = 'Normal' })
  nvim_set_hl('Pmenu', { fg = colors.base0, bg = colors.base04 })
  nvim_set_hl('PmenuSel', { fg = colors.cyan, reverse = true })
  nvim_set_hl('PmenuKind', { link = 'Pmenu' })
  nvim_set_hl('PmenuKindSel', { link = 'PmenuSel' })
  nvim_set_hl('PmenuExtra', { link = 'Pmenu' })
  nvim_set_hl('PmenuExtraSel', { link = 'PmenuSel' })
  nvim_set_hl('PmenuSbar', { bg = colors.base04 })
  nvim_set_hl('PmenuThumb', { bg = colors.cyan })
  nvim_set_hl('Question', { fg = colors.diag_info })
  nvim_set_hl('QuickFixLine', { fg = colors.base0, bg = colors.base03 })
  nvim_set_hl('Search', { bg = colors.base02 })
  nvim_set_hl('SpecialKey', { link = 'NonText' })
  nvim_set_hl('SpellBad', { underline = true, strikethrough = true })
  nvim_set_hl('SpellCap', { fg = colors.diag_hint })
  nvim_set_hl('SpellLocal', { link = 'SpellCap' })
  nvim_set_hl('SpellRare', { fg = colors.diag_warning })
  nvim_set_hl('StatusLine', { fg = colors.base0, bg = colors.base04 })
  nvim_set_hl('StatusLineNC', { fg = colors.base01, bg = colors.base04 })
  nvim_set_hl('TabLine', { fg = colors.base01, bg = colors.base04 })
  nvim_set_hl('TabLineFill', { fg = colors.base0, bg = colors.base04 })
  nvim_set_hl('TabLineSel', { fg = colors.base0, bg = colors.base03 })
  nvim_set_hl('Title', { fg = colors.purple, bold = true })
  nvim_set_hl('Visual', { bg = colors.base02 })
  nvim_set_hl('VisualNOS', { link = 'Visual' })
  nvim_set_hl('warningMsg', { fg = colors.diag_warning })
  nvim_set_hl('Whitespace', { fg = colors.base01 })
  nvim_set_hl('WildMenu', { fg = colors.base02 })
  nvim_set_hl('WinBar', { link = 'Pmenu' })
  nvim_set_hl('WinBarNC', { link = 'WinBar' }) -- SYNTAX :h group-name
  nvim_set_hl('Comment', { fg = colors.base01 })
  nvim_set_hl('Constant', { fg = colors.purple })
  nvim_set_hl('String', { fg = colors.yellow })
  nvim_set_hl('Character', { link = 'String' })
  nvim_set_hl('Number', { link = 'Constant' })
  nvim_set_hl('Boolean', { link = 'Constant' })
  nvim_set_hl('Float', { link = 'Constant' })
  nvim_set_hl('Identifier', { fg = colors.base0 })
  nvim_set_hl('Function', { fg = colors.green })
  nvim_set_hl('Statement', { fg = colors.pink })
  nvim_set_hl('Conditional', { link = 'Statement' })
  nvim_set_hl('Repeat', { link = 'Statement' })
  nvim_set_hl('Label', { link = 'Statement' })
  nvim_set_hl('Operator', { link = 'Statement' })
  nvim_set_hl('Keyword', { link = 'Statement' })
  nvim_set_hl('Exception', { link = 'Statement' })
  nvim_set_hl('PreProc', { link = 'Statement' })
  nvim_set_hl('Include', { link = 'Statement' })
  nvim_set_hl('Define', { link = 'Statement' })
  nvim_set_hl('Macro', { link = 'Statement' })
  nvim_set_hl('PreCondit', { link = 'Statement' })
  nvim_set_hl('Type', { fg = colors.cyan })
  nvim_set_hl('StorageClass', { link = 'Statement' })
  nvim_set_hl('Structure', { link = 'Type' })
  nvim_set_hl('Typedef', { link = 'Statement' })
  nvim_set_hl('Special', { fg = colors.red })
  nvim_set_hl('SpecialChar', { link = 'Constant' })
  nvim_set_hl('Tag', { fg = colors.pink })
  nvim_set_hl('Delimiter', { fg = colors.base0 })
  nvim_set_hl('SpecialComment', { link = 'Statement' })
  nvim_set_hl('Debug', { link = 'Statement' })
  nvim_set_hl('Underlined', { fg = colors.cyan, underline = true })
  nvim_set_hl('Ignore', {})
  nvim_set_hl('Error', { fg = colors.diag_error, bold = true })
  nvim_set_hl('Todo', { link = 'Title' }) -- PLUGINS
  if config.plugins['nvim-treesitter'] then
    nvim_set_hl('@variable', { link = 'Identifier' })
    nvim_set_hl('@variable.builtin', { link = 'Constant' })
    nvim_set_hl('@variable.parameter', { fg = colors.orange, italic = true })
    nvim_set_hl('@variable.member', { link = 'Identifier' })
    nvim_set_hl('@constant', { link = 'Constant' })
    nvim_set_hl('@constant.builtin', { link = 'Constant' })
    nvim_set_hl('@constant.macro', { link = 'Constant' })
    nvim_set_hl('@module', { link = 'Identifier' })
    nvim_set_hl('@module.builtin', { link = 'Constant' })
    nvim_set_hl('@label', { link = 'Label' })
    nvim_set_hl('@string', { link = 'String' })
    nvim_set_hl('@string.documentation', { link = 'Statement' })
    nvim_set_hl('@string.regexp', { link = 'Special' })
    nvim_set_hl('@string.escape', { link = 'Statement' })
    nvim_set_hl('@string.special', { link = 'String' })
    nvim_set_hl('@string.special.symbol', { link = 'Identifier' })
    nvim_set_hl('@string.special.url', { link = 'Underlined' })
    nvim_set_hl('@character', { link = 'String' })
    nvim_set_hl('@character.special', { link = 'String' })
    nvim_set_hl('@character.printf', { link = 'Special' })
    nvim_set_hl('@type', { link = 'Type' })
    nvim_set_hl('@type.builtin', { link = 'Type' })
    nvim_set_hl('@type.defition', { link = 'Type' })
    nvim_set_hl('@type.qualifier', { fg = colors.pink })
    nvim_set_hl('@function', { link = 'Function' })
    nvim_set_hl('@function.builtin', { link = 'Type' })
    nvim_set_hl('@function.call', { link = 'Function' })
    nvim_set_hl('@function.macro', { link = 'Function' })
    nvim_set_hl('@function.method', { link = 'Function' })
    nvim_set_hl('@function.method.call', { link = 'Function' })
    nvim_set_hl('@constructor', { link = 'Type' })
    nvim_set_hl('@operator', { link = 'Operator' })
    nvim_set_hl('@keyword', { link = 'Statement' })
    nvim_set_hl('@keyword.coroutine', { link = 'Statement' })
    nvim_set_hl('@keyword.function', { link = 'Statement' })
    nvim_set_hl('@keyword.operator', { link = 'Statement' })
    nvim_set_hl('@keyword.import', { link = 'Statement' })
    nvim_set_hl('@keyword.repeat', { link = 'Statement' })
    nvim_set_hl('@keyword.return', { link = 'Statement' })
    nvim_set_hl('@keyword.debug', { link = 'Statement' })
    nvim_set_hl('@keyword.exception', { link = 'Statement' })
    nvim_set_hl('@keyword.conditional', { link = 'Statement' })
    nvim_set_hl('@keyword.conditional.ternary', { link = 'Statement' })
    nvim_set_hl('@keyword.directive', { link = 'Statement' })
    nvim_set_hl('@keyword.directive.define', { link = 'Statement' })
    nvim_set_hl('@punctuation.delimiter', { link = 'Delimiter' })
    nvim_set_hl('@punctuation.bracket', { link = 'Delimiter' })
    nvim_set_hl('@punctuation.special', { fg = colors.pink })
    nvim_set_hl('@comment', { link = 'Comment' })
    nvim_set_hl('@comment.documentation', { link = 'Comment' })
    nvim_set_hl('@comment.error', { fg = colors.diag_error, bg = colors.shade_error })
    nvim_set_hl('@comment.warning', { fg = colors.diag_warning, bg = colors.shade_warning })
    nvim_set_hl('@comment.todo', { fg = colors.purple, bg = colors.shade_purple })
    nvim_set_hl('@comment.note', { fg = colors.diag_hint, bg = colors.shade_hint })
    nvim_set_hl('@markup.strong', { fg = colors.orange, bold = true })
    nvim_set_hl('@markup.italic', { fg = colors.yellow, italic = true })
    nvim_set_hl('@markup.strikethrough', { fg = colors.base01 })
    nvim_set_hl('@markup.underline', { link = 'Underlined' })
    nvim_set_hl('@markup.heading', { link = 'Title' })
    nvim_set_hl('@markup.quote', { link = 'Comment' })
    nvim_set_hl('@markup.math', { link = 'Constant' })
    nvim_set_hl('@markup.environment', { link = 'Comment' })
    nvim_set_hl('@markup.link', { link = '@markup.strong' })
    nvim_set_hl('@markup.link.label', { link = 'Underlined' })
    nvim_set_hl('@markup.link.url', { fg = colors.cyan })
    nvim_set_hl('@markup.raw', { fg = colors.green })
    nvim_set_hl('@markup.raw.block', { link = 'Comment' })
    nvim_set_hl('@markup.list', { fg = colors.purple })
    nvim_set_hl('@markup.list.checked', { fg = colors.git_added })
    nvim_set_hl('@markup.list.unchecked', { fg = colors.git_modified })
    nvim_set_hl('@diff.plus', { fg = colors.git_added })
    nvim_set_hl('@diff.minus', { fg = colors.git_removed })
    nvim_set_hl('@diff.delta', { fg = colors.git_modified })
    nvim_set_hl('@tag', { fg = colors.pink })
    nvim_set_hl('@tag.attribute', { fg = colors.green })
    nvim_set_hl('@tag.delimiter', { link = 'Delimiter' })
  end

  if config.plugins['nvim-cmp'] then
    nvim_set_hl('CmpItemKindText', { link = 'String' })
    nvim_set_hl('CmpItemKindMethod', { link = 'Function' })
    nvim_set_hl('CmpItemKindFunction', { link = 'Function' })
    nvim_set_hl('CmpItemKindField', { link = 'Identifier' })
    nvim_set_hl('CmpItemKindVariable', { link = 'Identifier' })
    nvim_set_hl('CmpItemKindClass', { link = 'Type' })
    nvim_set_hl('CmpItemKindInterface', { link = 'Type' })
    nvim_set_hl('CmpItemKindModule', { link = 'Type' })
    nvim_set_hl('CmpItemKindProperty', { link = 'Identifier' })
    nvim_set_hl('CmpItemKindUnity', { link = 'Number' })
    nvim_set_hl('CmpItemKindEnum', { link = 'Type' })
    nvim_set_hl('CmpItemKindKeyword', { link = 'Statement' })
    nvim_set_hl('CmpItemKindSnippet', { link = 'Tag' })
    nvim_set_hl('CmpItemKindColor', { fg = colors.orange })
    nvim_set_hl('CmpItemKindFile', { fg = colors.Identifier })
    nvim_set_hl('CmpItemKindReference', { link = 'Underlined' })
    nvim_set_hl('CmpItemKindFolder', { link = 'Directory' })
    nvim_set_hl('CmpItemKindEnumMember', { link = 'Constant' })
    nvim_set_hl('CmpItemKindConstant', { link = 'Constant' })
    nvim_set_hl('CmpItemKindStruct', { link = 'Identifier' })
    nvim_set_hl('CmpItemKindEvent', { link = 'Function' })
    nvim_set_hl('CmpItemKindOperator', { link = 'Operator' })
    nvim_set_hl('CmpItemKindTypeParameter', { link = 'Type' })
  end

  if config.plugins['indent-blankline.nvim'] then
    nvim_set_hl('IblIndent', { fg = colors.shade_purple, nocombine = true })
    nvim_set_hl('IblScope', { fg = colors.purple, nocombine = true })
  end

  if config.plugins['bufferline.nvim'] then
    nvim_set_hl('BufferLineSeparator', { fg = colors.base04, bg = colors.base04 })
    nvim_set_hl('BufferLineSeparatorSelected', { fg = colors.base04, bg = colors.base03 })
    nvim_set_hl('BufferLineBufferSelected', { fg = colors.purple, bold = true })
    nvim_set_hl('BufferLineFill', { fg = colors.base0, bg = colors.base04 })
    nvim_set_hl('BufferLineIndicatorSelected', { fg = colors.purple })
  end
  if config.on_highlight then
    local color = require 'dracula.color'
    local highlights = config.on_highlight(colors, color)

    for group_name, group_val in pairs(highlights) do
      local hl = nvim_get_hl { name = group_name, link = true }
      local val = vim.tbl_extend('force', hl, group_val)
      vim.api.nvim_set_hl(0, group_name, val)
    end
  end
end

return M
