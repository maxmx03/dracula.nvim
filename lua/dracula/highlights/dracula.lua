---@class dracula.highlights
---@field ColorColumn? table
---@field Conceal? table
---@field CurSearch? table
---@field Cursor? table
---@field lCursor? table
---@field CursorIM? table
---@field CursorColumn? table
---@field CursorLine? table
---@field Directory? table
---@field DiffAdd? table
---@field DiffChange? table
---@field DiffDelete? table
---@field DiffText? table
---@field EndOfBuffer? table
---@field TermCursor? table
---@field TermCursorNC? table
---@field ErrorMsg? table
---@field WinSeparator? table
---@field Folded? table
---@field FoldColumn? table
---@field SignColumn? table
---@field IncSearch? table
---@field Substitute? table
---@field LineNr? table
---@field LineNrAbove? table
---@field LineNrBelow? table
---@field CursorLineNr? table
---@field CursorLineFold? table
---@field CursorLineSign? table
---@field MatchParen? table
---@field ModeMsg? table
---@field MsgArea? table
---@field MsgSeparator? table
---@field MoreMsg? table
---@field NonText? table
---@field Normal? table
---@field NormalFloat? table
---@field FloatBorder? table
---@field FloatTitle? table
---@field NormalNC? table
---@field Pmenu? table
---@field PmenuSel? table
---@field PmenuKind? table
---@field PmenuKindSel? table
---@field PmenuExtra? table
---@field PmenuExtraSel? table
---@field PmenuSbar? table
---@field PmenuThumb? table
---@field Question? table
---@field QuickFixLine? table
---@field Search? table
---@field SpecialKey? table
---@field SpellBad? table
---@field SpellCap? table
---@field SpellLocal? table
---@field SpellRare? table
---@field StatusLine? table
---@field StatusLineNC? table
---@field TabLine? table
---@field TabLineFill? table
---@field TabLineSel? table
---@field Title? table
---@field Visual? table
---@field VisualNOS? table
---@field warningMsg? table
---@field Whitespace? table
---@field WildMenu? table
---@field WinBar? table
---@field WinBarNC? table
---@field Comment? table
---@field Constant? table
---@field String? table
---@field Character? table
---@field Number? table
---@field Boolean? table
---@field Float? table
---@field Identifier? table
---@field Function? table
---@field Statement? table
---@field Conditional? table
---@field Repeat? table
---@field Label? table
---@field Operator? table
---@field Keyword? table
---@field Exception? table
---@field PreProc? table
---@field Include? table
---@field Define? table
---@field Macro? table
---@field PreCondit? table
---@field Type? table
---@field StorageClass? table
---@field Structure? table
---@field Typedef? table
---@field Special? table
---@field SpecialChar? table
---@field Tag? table
---@field Delimiter? table
---@field SpecialComment? table
---@field Debug? table
---@field Underlined? table
---@field Ignore? table
---@field Error? table
---@field Todo? table
---@field DiagnosticError? table
---@field DiagnosticWarn? table
---@field DiagnosticInfo? table
---@field DiagnosticHint? table
---@field DiagnosticOk? table
---@field DiagnosticVirtualTextError? table
---@field DiagnosticVirtualTextWarn? table
---@field DiagnosticVirtualTextInfo? table
---@field DiagnosticVirtualTextHint? table
---@field DiagnosticVirtualTextOk? table
---@field DiagnosticUnderlineError? table
---@field DiagnosticUnderlineWarn? table
---@field DiagnosticUnderlineInfo? table
---@field DiagnosticUnderlineHint? table
---@field DiagnosticUnderlineOk? table
---@field CmpItemKindText? table
---@field CmpItemKindMethod? table
---@field CmpItemKindFunction? table
---@field CmpItemKindField? table
---@field CmpItemKindVariable? table
---@field CmpItemKindClass? table
---@field CmpItemKindInterface? table
---@field CmpItemKindModule? table
---@field CmpItemKindProperty? table
---@field CmpItemKindUnity? table
---@field CmpItemKindEnum? table
---@field CmpItemKindKeyword? table
---@field CmpItemKindSnippet? table
---@field CmpItemKindColor? table
---@field CmpItemKindFile? table
---@field CmpItemKindReference? table
---@field CmpItemKindFolder? table
---@field CmpItemKindEnumMember? table
---@field CmpItemKindConstant? table
---@field CmpItemKindStruct? table
---@field CmpItemKindEvent? table
---@field CmpItemKindOperator? table
---@field CmpItemKindTypeParameter? table
---@field IblIndent? table
---@field IblScope? table
---@field BufferLineSeparator? table
---@field BufferLineSeparatorSelected? table
---@field BufferLineBufferSelected? table
---@field BufferLineFill? table
---@field BufferLineIndicatorSelected? table
---@field BufferLineBufferVisible? table
---@field NeoTreeNormal? table
---@field NeoTreeNormalNC? table
---@field NeoTreeDotFile? table
---@field NeoTreeFileNameOpened? table
---@field NeoTreeFloatBorder? table
---@field NeoTreeFloatTitle? table
---@field NeoTreeGitAdded? table
---@field NeoTreeGitConflict? table
---@field NeoTreeGitDeleted? table
---@field NeoTreeGitIgnored? table
---@field NeoTreeGitModified? table
---@field NeoTreeGitUnstaged? table
---@field NeoTreeGitUntracked? table
---@field NeoTreeGitStaged? table
---@field NvimTreeSymlink? table
---@field NvimTreeSymlinkIcon? table
---@field NvimTreeFolderName? table
---@field NvimTreeRootFolder? table
---@field NvimTreeFolderIcon? table
---@field NvimTreeEmptyFolderName? table
---@field NvimTreeExecFile? table
---@field NvimTreeOpenedFile? table
---@field NvimTreeModifiedFile? table
---@field NvimTreeSpecialFile? table
---@field NvimTreeIndentMarker? table
---@field NvimTreeGitDirty? table
---@field NvimTreeGitStaged? table
---@field NvimTreeGitMerge? table
---@field NvimTreeGitRenamed? table
---@field NvimTreeGitNew? table
---@field NvimTreeGitDeleted? table
---@field NvimTreeNormal? table
---@field NvimTreeNormalFloat? table
---@field NvimTreeEndOfBuffer? table
---@field NvimTreeWinSeparator? table
---@field WhichKey? table
---@field WhichKeyGroup? table
---@field DashboardHeader? table
---@field DashboardFooter? table
---@field DashboardDesc? table
---@field DashboardKey? table
---@field DashboardIcon? table
---@field DashboardShotCut? table

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
  nvim_set_hl('FloatTitle', { fg = colors.purple, bold = true })
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
  nvim_set_hl('Character', { fg = colors.yellow })
  nvim_set_hl('Number', { fg = colors.purple })
  nvim_set_hl('Boolean', { fg = colors.purple })
  nvim_set_hl('Float', { fg = colors.purple })
  nvim_set_hl('Identifier', { fg = colors.base0 })
  nvim_set_hl('Function', { fg = colors.green })
  nvim_set_hl('Statement', { fg = colors.pink })
  nvim_set_hl('Conditional', { fg = colors.pink })
  nvim_set_hl('Repeat', { fg = colors.pink })
  nvim_set_hl('Label', { fg = colors.pink })
  nvim_set_hl('Operator', { fg = colors.pink })
  nvim_set_hl('Keyword', { fg = colors.pink })
  nvim_set_hl('Exception', { fg = colors.pink })
  nvim_set_hl('PreProc', { fg = colors.pink })
  nvim_set_hl('Include', { fg = colors.pink })
  nvim_set_hl('Define', { fg = colors.pink })
  nvim_set_hl('Macro', { fg = colors.pink })
  nvim_set_hl('PreCondit', { fg = colors.pink })
  nvim_set_hl('Type', { fg = colors.cyan })
  nvim_set_hl('StorageClass', { fg = colors.pink })
  nvim_set_hl('Structure', { fg = colors.cyan })
  nvim_set_hl('Typedef', { fg = colors.pink })
  nvim_set_hl('Special', { fg = colors.red })
  nvim_set_hl('SpecialChar', { fg = colors.purple })
  nvim_set_hl('Tag', { fg = colors.pink })
  nvim_set_hl('Delimiter', { fg = colors.base0 })
  nvim_set_hl('SpecialComment', { fg = colors.pink })
  nvim_set_hl('Debug', { fg = colors.pink })
  nvim_set_hl('Underlined', { fg = colors.cyan, underline = true })
  nvim_set_hl('Ignore', {})
  nvim_set_hl('Error', { fg = colors.diag_error, bold = true })
  nvim_set_hl('Todo', { fg = colors.purple, bold = true }) -- PLUGINS
  if config.plugins['nvim-treesitter'] then
    nvim_set_hl('@variable', { fg = colors.base0 })
    nvim_set_hl('@variable.builtin', { fg = colors.purple })
    nvim_set_hl('@variable.parameter', { fg = colors.orange, italic = true })
    nvim_set_hl('@variable.member', { fg = colors.base0 })
    nvim_set_hl('@constant', { fg = colors.purple })
    nvim_set_hl('@constant.builtin', { fg = colors.purple })
    nvim_set_hl('@constant.macro', { fg = colors.purple })
    nvim_set_hl('@module', { fg = colors.base0 })
    nvim_set_hl('@module.builtin', { fg = colors.purple })
    nvim_set_hl('@label', { fg = colors.pink })
    nvim_set_hl('@string', { fg = colors.yellow })
    nvim_set_hl('@string.documentation', { fg = colors.pink })
    nvim_set_hl('@string.regexp', { fg = colors.red })
    nvim_set_hl('@string.escape', { fg = colors.pink })
    nvim_set_hl('@string.special', { fg = colors.yellow })
    nvim_set_hl('@string.special.symbol', { fg = colors.base0 })
    nvim_set_hl('@string.special.url', { link = 'Underlined' })
    nvim_set_hl('@character', { fg = colors.yellow })
    nvim_set_hl('@character.special', { fg = colors.yellow })
    nvim_set_hl('@character.printf', { fg = colors.red })
    nvim_set_hl('@type', { fg = colors.cyan })
    nvim_set_hl('@type.builtin', { fg = colors.cyan })
    nvim_set_hl('@type.definition', { fg = colors.cyan })
    nvim_set_hl('@type.qualifier', { fg = colors.pink })
    nvim_set_hl('@function', { fg = colors.green })
    nvim_set_hl('@function.builtin', { fg = colors.cyan })
    nvim_set_hl('@function.call', { fg = colors.green })
    nvim_set_hl('@function.macro', { fg = colors.green })
    nvim_set_hl('@function.method', { fg = colors.green })
    nvim_set_hl('@function.method.call', { fg = colors.green })
    nvim_set_hl('@constructor', { fg = colors.cyan })
    nvim_set_hl('@operator', { fg = colors.pink })
    nvim_set_hl('@keyword', { fg = colors.pink })
    nvim_set_hl('@keyword.coroutine', { fg = colors.pink })
    nvim_set_hl('@keyword.function', { fg = colors.pink })
    nvim_set_hl('@keyword.operator', { fg = colors.pink })
    nvim_set_hl('@keyword.import', { fg = colors.pink })
    nvim_set_hl('@keyword.repeat', { fg = colors.pink })
    nvim_set_hl('@keyword.return', { fg = colors.pink })
    nvim_set_hl('@keyword.debug', { fg = colors.pink })
    nvim_set_hl('@keyword.exception', { fg = colors.pink })
    nvim_set_hl('@keyword.conditional', { fg = colors.pink })
    nvim_set_hl('@keyword.conditional.ternary', { fg = colors.pink })
    nvim_set_hl('@keyword.directive', { fg = colors.pink })
    nvim_set_hl('@keyword.directive.define', { fg = colors.pink })
    nvim_set_hl('@punctuation.delimiter', { fg = colors.base0 })
    nvim_set_hl('@punctuation.bracket', { fg = colors.base0 })
    nvim_set_hl('@punctuation.special', { fg = colors.pink })
    nvim_set_hl('@comment', { fg = colors.base01 })
    nvim_set_hl('@comment.documentation', { fg = colors.base01 })
    nvim_set_hl('@comment.error', { fg = colors.diag_error, bg = colors.shade_error })
    nvim_set_hl('@comment.warning', { fg = colors.diag_warning, bg = colors.shade_warning })
    nvim_set_hl('@comment.todo', { fg = colors.purple, bg = colors.shade_purple })
    nvim_set_hl('@comment.note', { fg = colors.diag_hint, bg = colors.shade_hint })
    nvim_set_hl('@markup.strong', { fg = colors.orange, bold = true })
    nvim_set_hl('@markup.italic', { fg = colors.yellow, italic = true })
    nvim_set_hl('@markup.strikethrough', { fg = colors.base01 })
    nvim_set_hl('@markup.underline', { fg = colors.cyan, underline = true })
    nvim_set_hl('@markup.heading', { fg = colors.purple, bold = true })
    nvim_set_hl('@markup.quote', { fg = colors.base01 })
    nvim_set_hl('@markup.math', { fg = colors.purple })
    nvim_set_hl('@markup.environment', { fg = colors.base01 })
    nvim_set_hl('@markup.link', { fg = colors.orange, bold = true })
    nvim_set_hl('@markup.link.label', { fg = colors.cyan, underline = true })
    nvim_set_hl('@markup.link.url', { fg = colors.cyan, underline = true })
    nvim_set_hl('@markup.raw', { fg = colors.base01 })
    nvim_set_hl('@markup.raw.block', { fg = colors.base01 })
    nvim_set_hl('@markup.list', { fg = colors.purple })
    nvim_set_hl('@markup.list.checked', { fg = colors.git_added })
    nvim_set_hl('@markup.list.unchecked', { fg = colors.git_modified })
    nvim_set_hl('@diff.plus', { fg = colors.git_added })
    nvim_set_hl('@diff.minus', { fg = colors.git_removed })
    nvim_set_hl('@diff.delta', { fg = colors.git_modified })
    nvim_set_hl('@tag', { fg = colors.pink })
    nvim_set_hl('@tag.attribute', { fg = colors.green })
    nvim_set_hl('@tag.delimiter', { fg = colors.base0 })
  end

  if config.plugins['nvim-lspconfig'] then
    nvim_set_hl('@lsp.type.class', { fg = colors.cyan })
    nvim_set_hl('@lsp.type.decorator', { fg = colors.green })
    nvim_set_hl('@lsp.type.enum', { fg = colors.cyan })
    nvim_set_hl('@lsp.type.enumMember', { fg = colors.purple })
    nvim_set_hl('@lsp.type.interface', { fg = colors.cyan })
    nvim_set_hl('@lsp.type.macro', { fg = colors.pink })
    nvim_set_hl('@lsp.type.namespace', { fg = colors.base0 })
    nvim_set_hl('@lsp.type.parameter', { fg = colors.orange, italic = true })
    nvim_set_hl('@lsp.type.property', { fg = colors.base0 })
    nvim_set_hl('@lsp.type.struct', { fg = colors.cyan })
    nvim_set_hl('@lsp.type.type', { fg = colors.cyan })
    nvim_set_hl('@lsp.type.typeParameter', { fg = colors.cyan, italic = true })
    nvim_set_hl('@lsp.type.variable', { fg = colors.base0 })
    nvim_set_hl('@lsp.typemod.variable.defaultLibrary', { fg = colors.purple })
    nvim_set_hl('@lsp.typemod.variable.readonly', { fg = colors.purple })
    nvim_set_hl('@lsp.typemod.variable.global', { fg = colors.purple })
    nvim_set_hl('@lsp.typemod.keyword.documentation', { fg = colors.pink })
    nvim_set_hl('@lsp.typemod.class.documentation', { fg = colors.cyan })
    nvim_set_hl('@lsp.typemod.property.readonly', { fg = colors.purple })
    nvim_set_hl('DiagnosticError', { fg = colors.diag_error })
    nvim_set_hl('DiagnosticWarn', { fg = colors.diag_warning })
    nvim_set_hl('DiagnosticInfo', { fg = colors.diag_info })
    nvim_set_hl('DiagnosticHint', { fg = colors.diag_hint })
    nvim_set_hl('DiagnosticOk', { fg = colors.diag_ok })
    nvim_set_hl('DiagnosticVirtualTextError', { fg = colors.diag_error, bg = colors.shade_error })
    nvim_set_hl('DiagnosticVirtualTextWarn', { fg = colors.diag_warning, bg = colors.shade_warning })
    nvim_set_hl('DiagnosticVirtualTextInfo', { fg = colors.diag_info, bg = colors.shade_info })
    nvim_set_hl('DiagnosticVirtualTextHint', { fg = colors.diag_hint, bg = colors.shade_hint })
    nvim_set_hl('DiagnosticVirtualTextOk', { fg = colors.diag_ok, bg = colors.shade_ok })
    nvim_set_hl('DiagnosticUnderlineError', { fg = colors.diag_error, underline = true })
    nvim_set_hl('DiagnosticUnderlineWarn', { fg = colors.diag_warning, underline = true })
    nvim_set_hl('DiagnosticUnderlineInfo', { fg = colors.diag_info, underline = true })
    nvim_set_hl('DiagnosticUnderlineHint', { fg = colors.diag_hint, underline = true })
    nvim_set_hl('DiagnosticUnderlineOk', { fg = colors.diag_ok, underline = true })
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
    nvim_set_hl('BufferLineBufferSelected', { fg = colors.base0, bold = true }, config)
    nvim_set_hl('BufferLineFill', { fg = colors.base0, bg = colors.base04 })
    nvim_set_hl('BufferLineIndicatorSelected', { fg = colors.base0 })
    nvim_set_hl('BufferLineBufferVisible', { fg = colors.base01, bg = colors.base03 }, config)
  end

  if config.plugins['neo-tree.nvim'] then
    nvim_set_hl('NeoTreeNormal', { fg = colors.base0, bg = colors.base04 })
    nvim_set_hl('NeoTreeNormalNC', { link = 'NeoTreeNormal' })
    nvim_set_hl('NeoTreeDotFile', { fg = colors.base01 })
    nvim_set_hl('NeoTreeFileNameOpened', { link = 'Directory' })
    nvim_set_hl('NeoTreeFloatBorder', { link = 'WinSeparator' })
    nvim_set_hl('NeoTreeFloatTitle', { link = 'Title' })
    nvim_set_hl('NeoTreeGitAdded', { fg = colors.git_added })
    nvim_set_hl('NeoTreeGitConflict', { fg = colors.git_modified })
    nvim_set_hl('NeoTreeGitDeleted', { fg = colors.git_removed })
    nvim_set_hl('NeoTreeGitIgnored', { fg = colors.base0 })
    nvim_set_hl('NeoTreeGitModified', { fg = colors.git_modified })
    nvim_set_hl('NeoTreeGitUnstaged', { fg = colors.git_modified })
    nvim_set_hl('NeoTreeGitUntracked', { fg = colors.git_modified })
    nvim_set_hl('NeoTreeGitStaged', { fg = colors.git_added })
  end

  if config.plugins['nvim-tree.lua'] then
    nvim_set_hl('NvimTreeSymlink', { link = 'Underlined' })
    nvim_set_hl('NvimTreeSymlinkIcon', { link = 'Directory' })
    nvim_set_hl('NvimTreeFolderName', { fg = colors.base0 })
    nvim_set_hl('NvimTreeRootFolder', { fg = colors.purple, bold = true })
    nvim_set_hl('NvimTreeFolderIcon', { link = 'Directory' })
    nvim_set_hl('NvimTreeEmptyFolderName', { fg = colors.base0 })
    nvim_set_hl('NvimTreeExecFile', { fg = colors.green })
    nvim_set_hl('NvimTreeOpenedFile', { fg = colors.purple, bold = true })
    nvim_set_hl('NvimTreeModifiedFile', { fg = colors.git_modified })
    nvim_set_hl('NvimTreeSpecialFile', { link = 'Special' })
    nvim_set_hl('NvimTreeIndentMarker', { fg = colors.shade_purple })
    nvim_set_hl('NvimTreeGitDirty', { fg = colors.git_modified })
    nvim_set_hl('NvimTreeGitStaged', { fg = colors.git_added })
    nvim_set_hl('NvimTreeGitMerge', { fg = colors.git_modified })
    nvim_set_hl('NvimTreeGitRenamed', { fg = colors.git_modified })
    nvim_set_hl('NvimTreeGitNew', { fg = colors.git_added })
    nvim_set_hl('NvimTreeGitDeleted', { fg = colors.git_removed })
    nvim_set_hl('NvimTreeNormal', { fg = colors.base0, bg = colors.base04 })
    nvim_set_hl('NvimTreeNormalFloat', { link = 'NvimTreeNormal' })
    nvim_set_hl('NvimTreeEndOfBuffer', { fg = colors.base04 })
    nvim_set_hl('NvimTreeWinSeparator', { fg = colors.base04, bg = colors.base04 })
  end

  if config.plugins['which-key.nvim'] then
    nvim_set_hl('WhichKey', { fg = colors.pink })
    nvim_set_hl('WhichKeyGroup', { fg = colors.orange })
  end

  if config.plugins['dashboard-nvim'] then
    nvim_set_hl('DashboardHeader', { fg = colors.red })
    nvim_set_hl('DashboardFooter', { fg = colors.base01 })
    nvim_set_hl('DashboardDesc', { link = 'Directory' })
    nvim_set_hl('DashboardKey', { fg = colors.pink })
    nvim_set_hl('DashboardIcon', { link = 'Directory' })
    nvim_set_hl('DashboardShotCut', { fg = colors.base0 })
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
