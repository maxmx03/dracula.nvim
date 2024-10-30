-- Dracula colorscheme
-- Repo: maxmx03/dracula.nvim
-- Maintainer: Max Del Canto <github.com/maxmx03>
-- License: MIT License

if vim.g.colors_name then
  vim.cmd 'hi clear'
end

if vim.fn.exists 'syntax_on' then
  vim.cmd 'syntax reset'
end

vim.g.colors_name = 'dracula'

local colors = require 'dracula.palette'
local dracula = require 'dracula'
---@type dracula.config
local config = dracula.config
local api = vim.api

if config.on_colors then
  local color = require 'dracula.color'
  colors = vim.tbl_extend('force', colors, config.on_colors(colors, color))
end

local hl = vim.api.nvim_set_hl
local none = 'NONE'

local term = {
  'base04',
  'red',
  'green',
  'yellow',
  'pink',
  'purple',
  'cyan',
  'base01',
  'base01',
  'orange',
  'green',
  'yellow',
  'cyan',
  'pink',
  'green',
  'base01',
}
for index, key in ipairs(term) do
  vim.g['terminal_color_' .. index - 1] = colors[key]
end

if config.transparent then
  hl(0, 'WinSeparator', { fg = colors.base01, bg = none })
  hl(0, 'IncSearch', { fg = colors.red, bg = none })
  hl(0, 'LineNr', { fg = colors.base01, bg = none })
  hl(0, 'CursorLineNr', { fg = colors.purple, bg = none })
  hl(0, 'CursorLineNr', { fg = colors.purple, bg = none })
  hl(0, 'Normal', { fg = colors.base0, bg = none })
  hl(0, 'Pmenu', { fg = colors.base0, bg = none })
  hl(0, 'TelescopeNormal', { fg = colors.base0, bg = none })
  hl(0, 'TelescopeBorder', { fg = colors.purple, bg = none })
  hl(0, 'WhichKeyNormal', { fg = colors.green, bg = none })
  hl(0, 'NvimTreeNormal', { fg = colors.base0, bg = none })
  hl(0, 'NeoTreeNormal', { fg = colors.base0, bg = none })
else
  hl(0, 'WinSeparator', { fg = colors.base01, bg = colors.base04 })
  hl(0, 'IncSearch', { fg = colors.red, bg = colors.shade_red, bold = true })
  hl(0, 'LineNr', { fg = colors.base01, bg = colors.base03 })
  hl(0, 'CursorLineNr', { fg = colors.purple, bg = colors.base03 })
  hl(0, 'CursorLineNr', { fg = colors.purple, bg = colors.base03 })
  hl(0, 'Normal', { fg = colors.base0, bg = colors.base03 })
  hl(0, 'Pmenu', { fg = colors.base0, bg = colors.base04 })
  hl(0, 'TelescopeNormal', { fg = colors.base0, bg = colors.base04 })
  hl(0, 'WhichKeyNormal', { fg = colors.green, bg = colors.base04 })
  hl(0, 'TelescopeBorder', { fg = colors.purple, bg = colors.base04 })
  hl(0, 'NvimTreeNormal', { fg = colors.base0, bg = colors.base04 })
  hl(0, 'NeoTreeNormal', { fg = colors.base0, bg = colors.base04 })
end

-- EDITOR :h highlight-groups
hl(0, 'ColorColumn', { bg = colors.base04 })
hl(0, 'Conceal', { fg = colors.base02 })
hl(0, 'CurSearch', { fg = colors.red, bg = colors.shade_red })
hl(0, 'Cursor', { fg = colors.base03, bg = colors.purple })
hl(0, 'lCursor', { link = 'Cursor' })
hl(0, 'CursorIM', { link = 'Cursor' })
hl(0, 'CursorColumn', { link = 'ColorColumn' })
hl(0, 'CursorLine', { bg = colors.base02 })
hl(0, 'Directory', { fg = colors.purple })
hl(0, 'DiffAdd', { fg = colors.git_added })
hl(0, 'DiffChange', { fg = colors.git_modified })
hl(0, 'DiffDelete', { fg = colors.git_removed, reverse = true })
hl(0, 'DiffText', { fg = colors.cyan, reverse = true })
hl(0, 'EndOfBuffer', { fg = colors.base03 })
hl(0, 'TermCursor', { link = 'Cursor' })
hl(0, 'TermCursorNC', { link = 'Cursor' })
hl(0, 'ErrorMsg', { fg = colors.diag_error })

hl(0, 'Folded', { fg = colors.base0, bg = colors.base02 })
hl(0, 'FoldColumn', { fg = colors.base0, bg = colors.base04 })
hl(0, 'SignColumn', { link = 'Normal' })
hl(0, 'Substitute', { link = 'IncSearch' })
hl(0, 'LineNrAbove', { link = 'LineNr' })
hl(0, 'LineNrBelow', { link = 'LineNr' })
hl(0, 'CursorLineFold', { link = 'FoldColumn' })
hl(0, 'CursorLineSign', { link = 'SignColumn' })
hl(0, 'MatchParen', { fg = colors.cyan })
hl(0, 'ModeMsg', { fg = colors.purple })
hl(0, 'MsgArea', { link = 'Normal' })
hl(0, 'MsgSeparator', { link = 'Normal' })
hl(0, 'MoreMsg', { link = 'ModeMsg' })
hl(0, 'NonText', { fg = colors.base01 })
hl(0, 'NormalFloat', { fg = colors.base0, bg = colors.base04 })
hl(0, 'FloatBorder', { link = 'WinSeparator' })
hl(0, 'FloatTitle', { fg = colors.purple, bold = true })
hl(0, 'NormalNC', { link = 'Normal' })
hl(0, 'PmenuSel', { fg = colors.cyan, reverse = true })
hl(0, 'PmenuKind', { link = 'Pmenu' })
hl(0, 'PmenuKindSel', { link = 'PmenuSel' })
hl(0, 'PmenuExtra', { link = 'Pmenu' })
hl(0, 'PmenuExtraSel', { link = 'PmenuSel' })
hl(0, 'PmenuSbar', { bg = colors.base04 })
hl(0, 'PmenuThumb', { bg = colors.cyan })
hl(0, 'Question', { fg = colors.diag_info })
hl(0, 'QuickFixLine', { fg = colors.base0, bg = colors.base03 })
hl(0, 'Search', { bg = colors.base02 })
hl(0, 'SpecialKey', { link = 'NonText' })
hl(0, 'SpellBad', { underline = true, strikethrough = true })
hl(0, 'SpellCap', { fg = colors.diag_hint })
hl(0, 'SpellLocal', { link = 'SpellCap' })
hl(0, 'SpellRare', { fg = colors.diag_warning })
hl(0, 'StatusLine', { fg = colors.base0, bg = colors.base04 })
hl(0, 'StatusLineNC', { fg = colors.base01, bg = colors.base04 })
hl(0, 'TabLine', { fg = colors.base01, bg = colors.base04 })
hl(0, 'TabLineFill', { fg = colors.base0, bg = colors.base04 })
hl(0, 'TabLineSel', { fg = colors.base0, bg = colors.base03 })
hl(0, 'Title', { fg = colors.purple, bold = true })
hl(0, 'Visual', { bg = colors.base02 })
hl(0, 'VisualNOS', { link = 'Visual' })
hl(0, 'warningMsg', { fg = colors.diag_warning })
hl(0, 'Whitespace', { fg = colors.base01 })
hl(0, 'WildMenu', { fg = colors.base02 })
hl(0, 'WinBar', { link = 'Pmenu' })
hl(0, 'WinBarNC', { link = 'WinBar' })

-- SYNTAX :h group-name
hl(0, 'Comment', { fg = colors.base01 })
hl(0, 'Constant', { fg = colors.purple })
hl(0, 'String', { fg = colors.yellow })
hl(0, 'Character', { link = 'String' })
hl(0, 'Number', { link = 'Constant' })
hl(0, 'Boolean', { link = 'Constant' })
hl(0, 'Float', { link = 'Constant' })
hl(0, 'Identifier', { fg = colors.base0 })
hl(0, 'Parameter', { fg = colors.orange })
hl(0, 'Property', { fg = colors.base0 })
hl(0, 'Function', { fg = colors.green })
hl(0, 'Statement', { fg = colors.pink })
hl(0, 'Conditional', { link = 'Statement' })
hl(0, 'Repeat', { link = 'Statement' })
hl(0, 'Label', { link = 'Statement' })
hl(0, 'Operator', { link = 'Statement' })
hl(0, 'Keyword', { link = 'Statement' })
hl(0, 'Exception', { link = 'Statement' })
hl(0, 'PreProc', { link = 'Statement' })
hl(0, 'Include', { link = 'Statement' })
hl(0, 'Define', { link = 'Statement' })
hl(0, 'Macro', { link = 'Statement' })
hl(0, 'PreCondit', { fg = colors.pink })
hl(0, 'Type', { fg = colors.cyan })
hl(0, 'StorageClass', { link = 'Statement' })
hl(0, 'Structure', { link = 'Type' })
hl(0, 'Typedef', { link = 'Statement' })
hl(0, 'Special', { fg = colors.red })
hl(0, 'SpecialChar', { fg = colors.purple })
hl(0, 'Tag', { fg = colors.pink })
hl(0, 'TagAttribute', { fg = colors.green })
hl(0, 'TagDelimiter', { fg = colors.base0 })
hl(0, 'Delimiter', { fg = colors.base0 })
hl(0, 'SpecialComment', { fg = colors.pink })
hl(0, 'Debug', { fg = colors.pink })
hl(0, 'Underlined', { fg = colors.cyan, underline = true })
hl(0, 'Ignore', {})
hl(0, 'Error', { fg = colors.diag_error, bold = true })
hl(0, 'Todo', { fg = colors.purple, bold = true })

if config.plugins['nvim-treesitter'] then
  hl(0, '@variable', { link = 'Identifier' })
  hl(0, '@variable.builtin', { link = 'Constant' })
  hl(0, '@variable.parameter', { link = 'Parameter' })
  hl(0, '@variable.member', { link = 'Property' })
  hl(0, '@property', { link = 'Property' })
  hl(0, '@property.json', { fg = colors.cyan })
  hl(0, '@property.yaml', { fg = colors.cyan })
  hl(0, '@property.css', { fg = colors.cyan })
  hl(0, '@property.scss', { fg = colors.cyan })
  hl(0, '@constant', { link = 'Constant' })
  hl(0, '@constant.builtin', { link = 'Constant' })
  hl(0, '@constant.macro', { link = 'Constant' })
  hl(0, '@constant.html', { link = 'Tag' })
  hl(0, '@module', { link = 'Type' })
  hl(0, '@module.builtin', { link = 'Constant' })
  hl(0, '@label', { link = 'Statement' })
  hl(0, '@string', { link = 'String' })
  hl(0, '@string.documentation', { link = 'Statement' })
  hl(0, '@string.regexp', { link = 'Special' })
  hl(0, '@string.escape', { link = 'Statement' })
  hl(0, '@string.special', { link = 'Special' })
  hl(0, '@string.special.symbol', { link = 'Identifier' })
  hl(0, '@string.special.url', { link = 'Underlined' })
  hl(0, '@character', { link = 'Constant' })
  hl(0, '@character.special', { link = 'Constant' })
  hl(0, '@character.special.scss', { link = 'Keyword' })
  hl(0, '@character.printf', { link = 'Keyword' })
  hl(0, '@type', { link = 'Type' })
  hl(0, '@type.css', { fg = colors.green })
  hl(0, '@type.scss', { fg = colors.green })
  hl(0, '@type.builtin', { link = 'Keyword' })
  hl(0, '@type.definition', { link = 'Type' })
  hl(0, '@type.qualifier', { link = 'Type' })
  hl(0, '@attribute', { link = 'Keyword' })
  hl(0, '@function', { link = 'Function' })
  hl(0, '@function.builtin', { link = 'Function' })
  hl(0, '@function.call', { link = 'Function' })
  hl(0, '@function.macro', { link = 'Function' })
  hl(0, '@function.method', { link = 'Function' })
  hl(0, '@function.method.call', { link = 'Function' })
  hl(0, '@constructor', { link = 'Type' })
  hl(0, '@constructor.lua', { link = 'Delimiter' })
  hl(0, '@operator', { link = 'Operator' })
  hl(0, '@keyword', { link = 'Keyword' })
  hl(0, '@keyword.coroutine', { link = 'Statement' })
  hl(0, '@keyword.function', { link = 'Keyword' })
  hl(0, '@keyword.type', { link = 'Keyword' })
  hl(0, '@keyword.operator', { link = 'Statement' })
  hl(0, '@keyword.import', { link = 'Include' })
  hl(0, '@keyword.repeat', { link = 'Statement' })
  hl(0, '@keyword.return', { link = 'Statement' })
  hl(0, '@keyword.debug', { link = 'Keyword' })
  hl(0, '@keyword.exception', { link = 'Statement' })
  hl(0, '@keyword.conditional', { link = 'Statement' })
  hl(0, '@keyword.conditional.ternary', { link = 'Statement' })
  hl(0, '@keyword.directive', { link = 'Statement' })
  hl(0, '@keyword.directive.define', { link = 'Statement' })
  hl(0, '@punctuation.delimiter', { link = 'Delimiter' })
  hl(0, '@punctuation.bracket', { link = 'Delimiter' })
  hl(0, '@punctuation.special', { link = 'Keyword' })
  hl(0, '@comment', { link = 'Comment' })
  hl(0, '@comment.documentation', { link = 'Comment' })
  hl(0, '@comment.error', { fg = colors.diag_error, bg = colors.shade_error })
  hl(0, '@comment.warning', { fg = colors.diag_warning, bg = colors.shade_warning })
  hl(0, '@comment.todo', { fg = colors.purple, bg = colors.shade_purple })
  hl(0, '@comment.note', { fg = colors.diag_hint, bg = colors.shade_hint })
  hl(0, '@markup.strong', { fg = colors.orange, bold = true })
  hl(0, '@markup.italic', { fg = colors.yellow, italic = true })
  hl(0, '@markup.strikethrough', { fg = colors.base01 })
  hl(0, '@markup.underline', { fg = colors.cyan, underline = true })
  hl(0, '@markup.heading.1', { fg = colors.purple, bold = true })
  hl(0, '@markup.heading.2', { fg = colors.red, bold = true })
  hl(0, '@markup.heading.3', { fg = colors.orange, bold = true })
  hl(0, '@markup.heading.4', { fg = colors.yellow, bold = true })
  hl(0, '@markup.heading.5', { fg = colors.cyan, bold = true })
  hl(0, '@markup.heading.6', { fg = colors.green, bold = true })
  hl(0, '@markup.quote', { fg = colors.base01 })
  hl(0, '@markup.math', { fg = colors.purple })
  hl(0, '@markup.environment', { fg = colors.base01 })
  hl(0, '@markup.link', { fg = colors.orange, bold = true })
  hl(0, '@markup.link.label', { fg = colors.cyan, underline = true })
  hl(0, '@markup.link.url', { fg = colors.cyan, underline = true })
  hl(0, '@markup.raw', { fg = colors.base01 })
  hl(0, '@markup.raw.block', { fg = colors.base0 })
  hl(0, '@markup.list', { fg = colors.purple })
  hl(0, '@markup.list.checked', { fg = colors.git_added })
  hl(0, '@markup.list.unchecked', { fg = colors.git_modified })
  hl(0, '@diff.plus', { fg = colors.git_added })
  hl(0, '@diff.minus', { fg = colors.git_removed })
  hl(0, '@diff.delta', { fg = colors.git_modified })
  hl(0, '@tag', { link = 'Tag' })
  hl(0, '@tag.builtin', { link = 'Tag' })
  hl(0, '@tag.attribute', { link = 'TagAttribute' })
  hl(0, '@tag.delimiter', { link = 'TagDelimiter' })
end

if config.plugins['rainbow-delimiters'] then
  hl(0, 'RainbowDelimiterRed', { fg = colors.red })
  hl(0, 'RainbowDelimiteYellow', { fg = colors.yellow })
  hl(0, 'RainbowDelimiterBlue', { fg = colors.pink })
  hl(0, 'RainbowDelimiterOrange', { fg = colors.orange })
  hl(0, 'RainbowDelimiterGreen', { fg = colors.green })
  hl(0, 'RainbowDelimiterViolet', { fg = colors.purple })
  hl(0, 'RainbowDelimiterCyan', { fg = colors.cyan })
end

if config.plugins['nvim-lspconfig'] then
  hl(0, '@lsp.type.class', { link = 'Type' })
  hl(0, '@lsp.type.comment', {})
  hl(0, '@lsp.type.decorator', { link = 'Function' })
  hl(0, '@lsp.type.enum', { link = 'Type' })
  hl(0, '@lsp.type.enumMember', { link = 'Constant' })
  hl(0, '@lsp.type.event', { link = 'Function' })
  hl(0, '@lsp.type.function', { link = 'Function' })
  hl(0, '@lsp.type.interface', { link = 'Type' })
  hl(0, '@lsp.type.keyword', { link = 'Keyword' })
  hl(0, '@lsp.type.macro', { link = 'Constant' })
  hl(0, '@lsp.type.method', { link = 'Function' })
  -- hl(0,'@lsp.type.modifier')
  hl(0, '@lsp.type.namespace', { link = 'Type' })
  hl(0, '@lsp.type.number', { link = 'Number' })
  hl(0, '@lsp.type.operator', { link = 'Operator' })
  hl(0, '@lsp.type.parameter', { link = 'Parameter' })
  hl(0, '@lsp.type.property', { link = 'Property' })
  hl(0, '@lsp.type.regexp', { link = 'Special' })
  hl(0, '@lsp.type.string', { link = 'String' })
  hl(0, '@lsp.type.struct', { link = 'Type' })
  hl(0, '@lsp.type.type', { link = 'Type' })
  hl(0, '@lsp.type.typeParameter', { link = 'Type' })
  hl(0, '@lsp.type.variable', { link = 'Identifier' })
  hl(0, '@lsp.mod.readonly', { link = 'Constant' })
  hl(0, '@lsp.mod.global', { link = 'Constant' })
  hl(0, 'DiagnosticError', { fg = colors.diag_error })
  hl(0, 'DiagnosticWarn', { fg = colors.diag_warning })
  hl(0, 'DiagnosticInfo', { fg = colors.diag_info })
  hl(0, 'DiagnosticHint', { fg = colors.diag_hint })
  hl(0, 'DiagnosticOk', { fg = colors.diag_ok })
  hl(0, 'DiagnosticVirtualTextError', { fg = colors.diag_error, bg = colors.shade_error })
  hl(0, 'DiagnosticVirtualTextWarn', { fg = colors.diag_warning, bg = colors.shade_warning })
  hl(0, 'DiagnosticVirtualTextInfo', { fg = colors.diag_info, bg = colors.shade_info })
  hl(0, 'DiagnosticVirtualTextHint', { fg = colors.diag_hint, bg = colors.shade_hint })
  hl(0, 'DiagnosticVirtualTextOk', { fg = colors.diag_ok, bg = colors.shade_ok })
  hl(0, 'DiagnosticUnderlineError', { fg = colors.diag_error, underline = true })
  hl(0, 'DiagnosticUnderlineWarn', { fg = colors.diag_warning, underline = true })
  hl(0, 'DiagnosticUnderlineInfo', { fg = colors.diag_info, underline = true })
  hl(0, 'DiagnosticUnderlineHint', { fg = colors.diag_hint, underline = true })
  hl(0, 'DiagnosticUnderlineOk', { fg = colors.diag_ok, underline = true })
  hl(0, 'LspReferenceText', { link = 'Visual' })
  hl(0, 'LspReferenceRead', { link = 'Visual' })
  hl(0, 'LspReferenceWrite', { link = 'Visual' })
  hl(0, 'LspInlayHint', { fg = colors.inlay_hint })
end

if config.plugins['nvim-navic'] then
  hl(0, 'NavicText', { fg = colors.base0 })
  hl(0, 'NavicSeparator', { link = 'Statement' })
  hl(0, 'NavicIconsMethod', { link = 'Function' })
  hl(0, 'NavicIconsFunction', { link = 'Function' })
  hl(0, 'NavicIconsField', { link = 'Identifier' })
  hl(0, 'NavicIconsVariable', { link = 'Identifier' })
  hl(0, 'NavicIconsClass', { link = 'Type' })
  hl(0, 'NavicIconsInterface', { link = 'Type' })
  hl(0, 'NavicIconsModule', { link = 'Type' })
  hl(0, 'NavicIconsNamespace', { link = 'Type' })
  hl(0, 'NavicIconsProperty', { link = 'Identifier' })
  hl(0, 'NavicIconsUnit', { link = 'Number' })
  hl(0, 'NavicIconsEnum', { link = 'Type' })
  hl(0, 'NavicIconsKeyword', { link = 'Statement' })
  hl(0, 'NavicIconsSnippet', { link = 'Tag' })
  hl(0, 'NavicIconsColor', { fg = colors.orange })
  hl(0, 'NavicIconsFile', { link = 'Identifier' })
  hl(0, 'NavicIconsReference', { link = 'Underlined' })
  hl(0, 'NavicIconsFolder', { link = 'Directory' })
  hl(0, 'NavicIconsEnumMember', { link = 'Constant' })
  hl(0, 'NavicIconsConstant', { link = 'Constant' })
  hl(0, 'NavicIconsStruct', { link = 'Identifier' })
  hl(0, 'NavicIconsEvent', { link = 'Function' })
  hl(0, 'NavicIconsOperator', { link = 'Operator' })
  hl(0, 'NavicIconsTypeParameter', { link = 'Type' })
end

if config.plugins['nvim-cmp'] then
  hl(0, 'CmpItemKindText', { link = 'String' })
  hl(0, 'CmpItemKindMethod', { link = 'Function' })
  hl(0, 'CmpItemKindFunction', { link = 'Function' })
  hl(0, 'CmpItemKindField', { link = 'Identifier' })
  hl(0, 'CmpItemKindVariable', { link = 'Identifier' })
  hl(0, 'CmpItemKindClass', { link = 'Type' })
  hl(0, 'CmpItemKindInterface', { link = 'Type' })
  hl(0, 'CmpItemKindModule', { link = 'Type' })
  hl(0, 'CmpItemKindProperty', { link = 'Identifier' })
  hl(0, 'CmpItemKindUnit', { link = 'Number' })
  hl(0, 'CmpItemKindEnum', { link = 'Type' })
  hl(0, 'CmpItemKindKeyword', { link = 'Statement' })
  hl(0, 'CmpItemKindSnippet', { link = 'Tag' })
  hl(0, 'CmpItemKindColor', { fg = colors.orange })
  hl(0, 'CmpItemKindFile', { link = 'Identifier' })
  hl(0, 'CmpItemKindReference', { link = 'Underlined' })
  hl(0, 'CmpItemKindFolder', { link = 'Directory' })
  hl(0, 'CmpItemKindEnumMember', { link = 'Constant' })
  hl(0, 'CmpItemKindConstant', { link = 'Constant' })
  hl(0, 'CmpItemKindStruct', { link = 'Identifier' })
  hl(0, 'CmpItemKindEvent', { link = 'Function' })
  hl(0, 'CmpItemKindOperator', { link = 'Operator' })
  hl(0, 'CmpItemKindTypeParameter', { link = 'Type' })
end

if config.plugins['indent-blankline.nvim'] then
  hl(0, 'IblIndent', { fg = colors.shade_purple, nocombine = true })
  hl(0, 'IblScope', { fg = colors.purple, nocombine = true })
end

if config.plugins['neo-tree.nvim'] then
  hl(0, 'NeoTreeNormalNC', { link = 'NeoTreeNormal' })
  hl(0, 'NeoTreeDotFile', { fg = colors.base01 })
  hl(0, 'NeoTreeFileNameOpened', { link = 'Directory' })
  hl(0, 'NeoTreeFloatBorder', { link = 'WinSeparator' })
  hl(0, 'NeoTreeFloatTitle', { link = 'Title' })
  hl(0, 'NeoTreeGitAdded', { fg = colors.git_added })
  hl(0, 'NeoTreeGitConflict', { fg = colors.git_modified })
  hl(0, 'NeoTreeGitDeleted', { fg = colors.git_removed })
  hl(0, 'NeoTreeGitIgnored', { fg = colors.base01 })
  hl(0, 'NeoTreeGitModified', { fg = colors.git_modified })
  hl(0, 'NeoTreeGitUnstaged', { fg = colors.git_modified })
  hl(0, 'NeoTreeGitUntracked', { fg = colors.git_modified })
  hl(0, 'NeoTreeGitStaged', { fg = colors.git_added })
end

if config.plugins['nvim-tree.lua'] then
  hl(0, 'NvimTreeSymlink', { link = 'Underlined' })
  hl(0, 'NvimTreeSymlinkIcon', { link = 'Directory' })
  hl(0, 'NvimTreeFolderName', { fg = colors.base0 })
  hl(0, 'NvimTreeRootFolder', { fg = colors.purple, bold = true })
  hl(0, 'NvimTreeFolderIcon', { link = 'Directory' })
  hl(0, 'NvimTreeEmptyFolderName', { fg = colors.base0 })
  hl(0, 'NvimTreeExecFile', { fg = colors.green })
  hl(0, 'NvimTreeOpenedFile', { fg = colors.purple, bold = true })
  hl(0, 'NvimTreeModifiedFile', { fg = colors.git_modified })
  hl(0, 'NvimTreeSpecialFile', { link = 'Special' })
  hl(0, 'NvimTreeIndentMarker', { fg = colors.shade_purple })
  hl(0, 'NvimTreeGitDirty', { fg = colors.git_modified })
  hl(0, 'NvimTreeGitStaged', { fg = colors.git_added })
  hl(0, 'NvimTreeGitMerge', { fg = colors.git_modified })
  hl(0, 'NvimTreeGitRenamed', { fg = colors.git_modified })
  hl(0, 'NvimTreeGitNew', { fg = colors.git_added })
  hl(0, 'NvimTreeGitDeleted', { fg = colors.git_removed })
  hl(0, 'NvimTreeNormalFloat', { link = 'NvimTreeNormal' })
  hl(0, 'NvimTreeEndOfBuffer', { fg = colors.base04 })
  hl(0, 'NvimTreeWinSeparator', { fg = colors.base04, bg = colors.base04 })
end

if config.plugins['which-key.nvim'] then
  hl(0, 'WhichKey', { fg = colors.green })
  hl(0, 'WhichKeyDesc', { fg = colors.orange, italic = true })
  hl(0, 'WhichKeySeparator', { fg = colors.pink })
  hl(0, 'WhichKeyGroup', { fg = colors.purple })
end

if config.plugins['dashboard-nvim'] then
  hl(0, 'DashboardHeader', { fg = colors.red })
  hl(0, 'DashboardFooter', { fg = colors.base01 })
  hl(0, 'DashboardDesc', { link = 'Directory' })
  hl(0, 'DashboardKey', { fg = colors.pink })
  hl(0, 'DashboardIcon', { link = 'Directory' })
  hl(0, 'DashboardShotCut', { fg = colors.base0 })
end

if config.plugins['gitsigns.nvim'] then
  hl(0, 'GitSignsAdd', { fg = colors.git_added })
  hl(0, 'GitSignsChange', { fg = colors.git_modified })
  hl(0, 'GitSignsDelete', { fg = colors.git_removed })
end

if config.plugins['neogit'] then
  hl(0, 'NeogitCursorLine', { link = 'CursorLine' })
  hl(0, 'NeogitBranch', { fg = colors.purple })
  hl(0, 'NeogitRemote', { fg = colors.cyan })
  hl(0, 'NeogitHunkHeader', { fg = colors.purple, bg = colors.shade_purple })
  hl(0, 'NeogitHunkHeaderHighlight', { link = 'Title' })
  hl(0, 'NeogitDiffContextHighlight', { fg = colors.base0, bg = colors.base03 })
  hl(0, 'NeogitDiffContext', { fg = colors.base0, bg = colors.base04 })
  hl(0, 'NeogitDiffDeleteHighlight', { fg = colors.git_removed, bg = colors.shade_red })
  hl(0, 'NeogitDiffDelete', { fg = colors.git_removed })
  hl(0, 'NeogitDiffAddHighlight', { fg = colors.git_added, bg = colors.shade_green })
  hl(0, 'NeogitDiffAdd', { fg = colors.git_added })
end

if config.plugins['todo-comments.nvim'] then
  hl(0, 'TodoFgTODO', { fg = colors.purple })
  hl(0, 'TodoFgWARN', { fg = colors.diag_warning })
  hl(0, 'TodoFgTEST', { fg = colors.diag_ok })
  hl(0, 'TodoFgPERF', { fg = colors.yellow })
  hl(0, 'TodoFgNOTE', { fg = colors.cyan })
  hl(0, 'TodoFgHACK', { fg = colors.pink })
  hl(0, 'TodoFgFIX', { fg = colors.diag_error })
  hl(0, 'TodoSignTODO', { fg = colors.purple })
  hl(0, 'TodoSignWARN', { fg = colors.diag_warning })
  hl(0, 'TodoSignTEST', { fg = colors.diag_ok })
  hl(0, 'TodoSignPERF', { fg = colors.yellow })
  hl(0, 'TodoSignNOTE', { fg = colors.cyan })
  hl(0, 'TodoSignHACK', { fg = colors.pink })
  hl(0, 'TodoSignFIX', { fg = colors.diag_error })
  hl(0, 'TodoBgTODO', { fg = colors.purple, reverse = true })
  hl(0, 'TodoBgWARN', { fg = colors.diag_warning, reverse = true })
  hl(0, 'TodoBgTEST', { fg = colors.diag_ok, reverse = true })
  hl(0, 'TodoBgPERF', { fg = colors.yellow, reverse = true })
  hl(0, 'TodoBgNOTE', { fg = colors.cyan, reverse = true })
  hl(0, 'TodoBgHACK', { fg = colors.pink, reverse = true })
  hl(0, 'TodoBgFIX', { fg = colors.diag_error, reverse = true })
end

if config.plugins['lazy.nvim'] then
  hl(0, 'LazyH1', { fg = colors.purple, bg = colors.base04 })
  hl(0, 'LazyButton', { fg = colors.base0, bg = colors.base02 })
  hl(0, 'LazyButtonActive', { bg = colors.base02, reverse = true })
  hl(0, 'LazyReasonStart', { fg = colors.cyan })
end

if config.plugins['telescope.nvim'] then
  hl(0, 'TelescopeSelection', { link = 'CursorLine' })
  hl(0, 'TelescopeSelectionCaret', { fg = colors.purple })
  hl(0, 'TelescopeMultiIcon', { fg = colors.purple })
  hl(0, 'TelescopePreviewNormal', { link = 'TelescopeNormal' })
  hl(0, 'TelescopePromptNormal', { link = 'TelescopeNormal' })
  hl(0, 'TelescopeResultsNormal', { link = 'TelescopeNormal' })
  hl(0, 'TelescopePromptBorder', { link = 'TelescopeBorder' })
  hl(0, 'TelescopeResultsBorder', { link = 'TelescopeBorder' })
  hl(0, 'TelescopePreviewBorder', { link = 'TelescopeBorder' })
  hl(0, 'TelescopeTitle', { fg = colors.purple, bg = colors.shade_purple })
  hl(0, 'TelescopePromptTitle', { link = 'TelescopeTitle' })
  hl(0, 'TelescopeResultsTitle', { link = 'TelescopeTitle' })
  hl(0, 'TelescopePreviewTitle', { link = 'TelescopeTitle' })
  hl(0, 'TelescopeMatching', { fg = colors.purple, bg = colors.shade_purple })
  hl(0, 'TelescopePreviewMatch', { link = 'TelescopeMatching' })
  hl(0, 'TelescopePromptCounter', { link = 'NonText' })
  hl(0, 'TelescopePromptPrefix', { fg = colors.purple })
end

if config.plugins['noice.nvim'] then
  hl(0, 'NoiceFormatProgressTodo', { fg = colors.diag_ok, bg = colors.shade_ok })
  hl(0, 'NoiceFormatProgressDone', { fg = colors.diag_ok, reverse = true })
  hl(0, 'NoiceLspProgressSpinner', { fg = colors.diag_ok })
  hl(0, 'NoiceLspProgressClient', { fg = colors.diag_ok })
  hl(0, 'NoiceLspProgressTitle', { link = 'Title' })
end

if config.plugins['hop.nvim'] then
  hl(0, 'HopNextKey', { fg = colors.red })
  hl(0, 'HopNextKey1', { fg = colors.cyan })
  hl(0, 'HopUnmatched', { fg = colors.base01 })
end

if config.plugins['mini.statusline'] then
  hl(0, 'MiniStatuslineModeNormal', { fg = colors.base03, bg = colors.purple })
  hl(0, 'MiniStatuslineModeInsert', { fg = colors.base03, bg = colors.green })
  hl(0, 'MiniStatuslineModeVisual', { fg = colors.yellow, bg = colors.base03 })
  hl(0, 'MiniStatuslineModeReplace', { fg = colors.red, bg = colors.base03 })
  hl(0, 'MiniStatuslineModeCommand', { fg = colors.orange, bg = colors.base03 })
  hl(0, 'MinistatusLineFileName', { fg = colors.base0, bg = colors.base04 })
  hl(0, 'MiniStatuslineDevinfo', { fg = colors.base0, bg = colors.base02 })
  hl(0, 'MiniStatuslineFileinfo', { fg = colors.base0, bg = colors.base02 })
  hl(0, 'MiniStatuslineInactive', { fg = colors.base01, bg = colors.base03 })
end

if config.plugins['mini.tabline'] then
  hl(0, 'MiniTablineCurrent', { fg = colors.base0, bg = colors.base03 })
  hl(0, 'MiniTablineVisible', { fg = colors.base0, bg = colors.base03 })
  hl(0, 'MiniTablineHidden', { fg = colors.base01, bg = colors.base03 })
  hl(0, 'MiniTablineModifiedCurrent', { link = 'MiniTabLineCurrent' })
  hl(0, 'MiniTablineModifiedVisible', { link = 'MiniTablineVisible' })
  hl(0, 'MiniTablineModifiedHidden', { link = 'MiniTablineHidden' })
  hl(0, 'MiniTablineFill', { fg = colors.base0, bg = colors.base04 })
  hl(0, 'MiniTablineTabpagesection', { fg = colors.base0, bg = colors.base04 })
end

if config.plugins['mini.starter'] then
  hl(0, 'MiniStarterCurrent', { link = 'CursorLine' })
  hl(0, 'MiniStarterHeader', { fg = colors.red })
  hl(0, 'MiniStarterFooter', { fg = colors.base01 })
  hl(0, 'MiniStarterItem', { fg = colors.base0 })
  hl(0, 'MiniStarterItemBullet', { fg = colors.pink })
  hl(0, 'MiniStarterItemPrefix', { fg = colors.pink })
  hl(0, 'MiniStarterSection', { link = 'Title' })
  hl(0, 'MiniStarterQuery', { fg = colors.pink, bold = true })
end

if config.plugins['mini.cursorword'] then
  hl(0, 'MiniCursorword', { link = 'Visual' })
end

if config.plugins['bufferline.nvim'] and config.transparent then
  local color = require 'dracula.color'
  local background = color.shade(colors.base02, 2)
  hl(0, 'BufferLineFill', { bg = background })
  hl(0, 'BufferLineBufferSelected', { fg = colors.base0 })
  hl(0, 'BufferLineSeparator', { fg = background })
  hl(0, 'BufferLineSeparatorSelected', { fg = background })
  hl(0, 'BufferLineSeparatorVisible', { fg = background })
end

if config.styles then
  for group_name, group_val in pairs(config.styles) do
    local group = api.nvim_get_hl(0, { name = group_name, link = false })
    ---@diagnostic disable-next-line: param-type-mismatch
    hl(0, group_name, vim.tbl_deep_extend('force', group, group_val))
  end
end

if config.on_highlights then
  local color = require 'dracula.color'
  local highlights = config.on_highlights(colors, color)
  for group_name, group_val in pairs(highlights) do
    local group = api.nvim_get_hl(0, { name = group_name, link = false })
    ---@diagnostic disable-next-line: param-type-mismatch
    hl(0, group_name, vim.tbl_deep_extend('force', group, group_val))
  end
end
