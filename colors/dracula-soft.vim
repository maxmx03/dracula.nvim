vim9script

# dracula-soft Colorscheme for vim
# Url: maxmx03/dracula.nvim
# Maintainer: Max Del Canto <github.com/maxmx03>
# License: MIT License

if exists("g:loaded_dracula")
  finish
endif

g:loaded_dracula = 1

hi clear

if exists('syntax_on')
  syntax reset
endif

set termguicolors
g:colors_name = 'dracula-soft'
g:dracula = {
  plugins: {},
}
g:dracula.plugins["nvim-treesitter"] = true,
g:dracula.plugins["nvim-lspconfig"] = true,
g:dracula.plugins["nvim-navic"] = true,
g:dracula.plugins["nvim-cmp"] = true,
g:dracula.plugins["indent-blankline.nvim"] = true,
g:dracula.plugins["bufferline.nvim"] = true,
g:dracula.plugins["neo-tree.nvim"] = true,
g:dracula.plugins["nvim-tree.lua"] = true,
g:dracula.plugins["which-key.nvim"] = true,
g:dracula.plugins["dashboard-nvim"] = true,
g:dracula.plugins["gitsigns.nvim"] = true,
g:dracula.plugins["neogit"] = true,
g:dracula.plugins["todo-comments.nvim"] = true,
g:dracula.plugins["lazy.nvim"] = true,
g:dracula.plugins["telescope.nvim"] = true,
g:dracula.plugins["noice.nvim"] = true,
g:dracula.plugins["hop.nvim"] = true,
g:dracula.plugins["mini.statusline"] = true,
g:dracula.plugins["mini.tabline"] = true,
g:dracula.plugins["mini.starter"] = true,
g:dracula.plugins["mini.cursorword"] = true,
if (has('termguicolors') && &termguicolors) || has('gui_running')
  g:terminal_ansi_colors = [
    "#F8F8F2",
    "#7B7F8B",
    "#44475A",
    "#282A36",
    "#262626",
    "#ADF6F6",
    "#EE6666",
    "#ADF6F6",
    "#ADF6F6",
    "#62E884",
    "#FFB86C",
    "#62E884",
    "#FFB86C",
    "#EE6666",
    "#62E884",
    "#689494",
    "#FFB86C",
    "#F286C4",
    "#BF9EEE",
    "#EE6666",
    "#314742",
    "#483F3E",
    "#394552",
    "#46333D",
    "#314742",
    "#394552",
    "#394552",
    "#314742",
    "#483F3E",
    "#3F3B52",
    "#5B415A",
    "#3F3B52",
    "#46333D",
    "#483F3E",
    "#454745",
    "#E7EE98",
    ]
endif


hi ColorColumn guifg=NONE guibg=#262626 gui=NONE cterm=NONE
hi Conceal guifg=#44475a guibg=NONE gui=NONE cterm=NONE
hi CurSearch guifg=#adf6f6 guibg=#394552 gui=NONE cterm=NONE
hi Cursor guifg=#282a36 guibg=#adf6f6 gui=NONE cterm=NONE
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi! link CursorColumn ColorColumn
hi CursorLine guifg=NONE guibg=#44475a gui=NONE cterm=NONE
hi Directory guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
hi DiffChange guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
hi DiffDelete guifg=#ee6666 guibg=NONE gui=reverse cterm=reverse
hi DiffText guifg=#adf6f6 guibg=NONE gui=reverse cterm=reverse
hi EndOfBuffer guifg=#282a36 guibg=NONE gui=NONE cterm=NONE
hi! link TermCursor Cursor
hi TermCursorNC guifg=#f8f8f2 guibg=NONE gui=reverse cterm=reverse
hi ErrorMsg guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
hi WinSeparator guifg=#7b7f8b guibg=#262626 gui=NONE cterm=NONE
hi Folded guifg=#f8f8f2 guibg=#44475a gui=NONE cterm=NONE
hi FoldColumn guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
hi! link SignColumn Normal
hi IncSearch guifg=#adf6f6 guibg=#394552 gui=bold cterm=bold
hi! link Substitute IncSearch
hi LineNr guifg=#7b7f8b guibg=#282a36 gui=NONE cterm=NONE
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi CursorLineNr guifg=#bf9eee guibg=#282a36 gui=NONE cterm=NONE
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi MatchParen guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
hi! link MsgArea Normal
hi! link MsgSeparator Normal
hi! link MoreMsg ModeMsg
hi NonText guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
hi Normal guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
hi NormalFloat guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
hi! link FloatBorder WinSeparator
hi FloatTitle guifg=#bf9eee guibg=NONE gui=true cterm=true
hi! link NormalNC Normal
hi Pmenu guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
hi PmenuSel guifg=#adf6f6 guibg=NONE gui=reverse cterm=reverse
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
hi PmenuSbar guifg=NONE guibg=#262626 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#adf6f6 gui=NONE cterm=NONE
hi Question guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
hi QuickFixLine guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
hi Search guifg=NONE guibg=#44475a gui=NONE cterm=NONE
hi! link SpecialKey NonText
hi SpellBad guifg=NONE guibg=NONE gui=strikethrough,underline cterm=strikethrough,underline
hi SpellCap guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
hi! link SpellLocal SpellCap
hi SpellRare guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
hi StatusLineNC guifg=#7b7f8b guibg=#262626 gui=NONE cterm=NONE
hi TabLine guifg=#7b7f8b guibg=#262626 gui=NONE cterm=NONE
hi TabLineFill guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
hi TabLineSel guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
hi Title guifg=#bf9eee guibg=NONE gui=true cterm=true
hi Visual guifg=NONE guibg=#44475a gui=NONE cterm=NONE
hi! link VisualNOS Visual
hi warningMsg guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
hi Whitespace guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#44475a guibg=NONE gui=NONE cterm=NONE
hi! link WinBar Pmenu
hi! link WinBarNC WinBar
hi Comment guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
hi String guifg=#e7ee98 guibg=NONE gui=NONE cterm=NONE
hi Character guifg=#e7ee98 guibg=NONE gui=NONE cterm=NONE
hi Number guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Label guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Structure guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
hi Tag guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Debug guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=#adf6f6 guibg=NONE gui=underline cterm=underline
hi Ignore guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#ee6666 guibg=NONE gui=bold cterm=bold
hi Todo guifg=#bf9eee guibg=NONE gui=true cterm=true
if g:dracula-soft.plugins["nvim-treesitter"]
  hi @variable guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @variable.builtin guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @variable.parameter guifg=#ffb86c guibg=NONE gui=italic cterm=italic
  hi @variable.member guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @constant guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @constant.builtin guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @constant.macro guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @module guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @module.builtin guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @label guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @string guifg=#e7ee98 guibg=NONE gui=NONE cterm=NONE
  hi @string.documentation guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @string.regexp guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi @string.escape guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @string.special guifg=#e7ee98 guibg=NONE gui=NONE cterm=NONE
  hi @string.special.symbol guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi! link @string.special.url Underlined
  hi @character guifg=#e7ee98 guibg=NONE gui=NONE cterm=NONE
  hi @character.special guifg=#e7ee98 guibg=NONE gui=NONE cterm=NONE
  hi @character.printf guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi @type guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @type.builtin guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @type.definition guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @type.qualifier guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @function guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi @function.builtin guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @function.call guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi @function.macro guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi @function.method guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi @function.method.call guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi @constructor guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @constructor.lua guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @operator guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.coroutine guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.function guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.operator guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.import guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.repeat guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.return guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.debug guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.exception guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.conditional guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.conditional.ternary guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.directive guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.directive.define guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @punctuation.delimiter guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @punctuation.bracket guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @punctuation.special guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @comment guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi @comment.documentation guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi @comment.error guifg=#ee6666 guibg=#46333D gui=NONE cterm=NONE
  hi @comment.warning guifg=#ffb86c guibg=#483F3E gui=NONE cterm=NONE
  hi @comment.todo guifg=#bf9eee guibg=#3F3B52 gui=NONE cterm=NONE
  hi @comment.note guifg=#adf6f6 guibg=#394552 gui=NONE cterm=NONE
  hi @markup.strong guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi @markup.italic guifg=#e7ee98 guibg=NONE gui=italic cterm=italic
  hi @markup.strikethrough guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi @markup.underline guifg=#adf6f6 guibg=NONE gui=underline cterm=underline
  hi @markup.heading guifg=#bf9eee guibg=NONE gui=true cterm=true
  hi @markup.quote guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi @markup.math guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @markup.environment guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi @markup.link guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi @markup.link.label guifg=#adf6f6 guibg=NONE gui=underline cterm=underline
  hi @markup.link.url guifg=#adf6f6 guibg=NONE gui=underline cterm=underline
  hi @markup.raw guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi @markup.raw.block guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi @markup.list guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @markup.list.checked guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi @markup.list.unchecked guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi @diff.plus guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi @diff.minus guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi @diff.delta guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi @tag guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @tag.attribute guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi @tag.delimiter guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @property.yaml guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @property.json guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @property.css guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @property.scss guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["nvim-lspconfig"]
  hi @lsp.type.class guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.decorator guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.enum guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.enumMember guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.interface guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.macro guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.namespace guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.parameter guifg=#ffb86c guibg=NONE gui=italic cterm=italic
  hi @lsp.type.property guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.struct guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.type guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.typeParameter guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.variable guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.variable.defaultLibrary guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.variable.readonly guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.variable.global guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.keyword.documentation guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.class.documentation guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.property.readonly guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticError guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticWarn guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticInfo guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticHint guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticOk guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextError guifg=#ee6666 guibg=#46333D gui=NONE cterm=NONE
  hi DiagnosticVirtualTextWarn guifg=#ffb86c guibg=#483F3E gui=NONE cterm=NONE
  hi DiagnosticVirtualTextInfo guifg=#adf6f6 guibg=#394552 gui=NONE cterm=NONE
  hi DiagnosticVirtualTextHint guifg=#adf6f6 guibg=#394552 gui=NONE cterm=NONE
  hi DiagnosticVirtualTextOk guifg=#62e884 guibg=#314742 gui=NONE cterm=NONE
  hi DiagnosticUnderlineError guifg=#ee6666 guibg=NONE gui=underline cterm=underline
  hi DiagnosticUnderlineWarn guifg=#ffb86c guibg=NONE gui=underline cterm=underline
  hi DiagnosticUnderlineInfo guifg=#adf6f6 guibg=NONE gui=underline cterm=underline
  hi DiagnosticUnderlineHint guifg=#adf6f6 guibg=NONE gui=underline cterm=underline
  hi DiagnosticUnderlineOk guifg=#62e884 guibg=NONE gui=underline cterm=underline
  hi! link LspReferenceText Visual
  hi! link LspReferenceRead Visual
  hi! link LspReferenceWrite Visual
  hi LspInlayHint guifg=#689494 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["nvim-navic"]
  hi NavicText guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi! link NavicSeparator Statement
  hi! link NavicIconsMethod Function
  hi! link NavicIconsFunction Function
  hi! link NavicIconsField Identifier
  hi! link NavicIconsVariable Identifier
  hi! link NavicIconsClass Type
  hi! link NavicIconsInterface Type
  hi! link NavicIconsModule Type
  hi! link NavicIconsNamespace Type
  hi! link NavicIconsProperty Identifier
  hi! link NavicIconsUnity Number
  hi! link NavicIconsEnum Type
  hi! link NavicIconsKeyword Statement
  hi! link NavicIconsSnippet Tag
  hi NavicIconsColor guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NavicIconsFile guifg=NONE guibg=NONE gui=NONE cterm=NONE
  hi! link NavicIconsReference Underlined
  hi! link NavicIconsFolder Directory
  hi! link NavicIconsEnumMember Constant
  hi! link NavicIconsConstant Constant
  hi! link NavicIconsStruct Identifier
  hi! link NavicIconsEvent Function
  hi! link NavicIconsOperator Operator
  hi! link NavicIconsTypeParameter Type
endif

if g:dracula-soft.plugins["nvim-cmp"]
  hi! link CmpItemKindText String
  hi! link CmpItemKindMethod Function
  hi! link CmpItemKindFunction Function
  hi! link CmpItemKindField Identifier
  hi! link CmpItemKindVariable Identifier
  hi! link CmpItemKindClass Type
  hi! link CmpItemKindInterface Type
  hi! link CmpItemKindModule Type
  hi! link CmpItemKindProperty Identifier
  hi! link CmpItemKindUnity Number
  hi! link CmpItemKindEnum Type
  hi! link CmpItemKindKeyword Statement
  hi! link CmpItemKindSnippet Tag
  hi CmpItemKindColor guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi CmpItemKindFile guifg=NONE guibg=NONE gui=NONE cterm=NONE
  hi! link CmpItemKindReference Underlined
  hi! link CmpItemKindFolder Directory
  hi! link CmpItemKindEnumMember Constant
  hi! link CmpItemKindConstant Constant
  hi! link CmpItemKindStruct Identifier
  hi! link CmpItemKindEvent Function
  hi! link CmpItemKindOperator Operator
  hi! link CmpItemKindTypeParameter Type
endif

if g:dracula-soft.plugins["indent-blankline.nvim"]
  hi IblIndent guifg=#3F3B52 guibg=NONE gui=NONE cterm=NONE
  hi IblScope guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["bufferline.nvim"]
  hi BufferLineSeparator guifg=#262626 guibg=#262626 gui=NONE cterm=NONE
  hi BufferLineSeparatorSelected guifg=#262626 guibg=#282a36 gui=NONE cterm=NONE
  hi BufferLineBufferSelected guifg=#f8f8f2 guibg=NONE gui=bold cterm=bold
  hi BufferLineFill guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
  hi BufferLineIndicatorSelected guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi BufferLineBufferVisible guifg=#7b7f8b guibg=#282a36 gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["neo-tree.nvim"]
  hi NeoTreeNormal guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
  hi! link NeoTreeNormalNC NeoTreeNormal
  hi NeoTreeDotFile guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi! link NeoTreeFileNameOpened Directory
  hi! link NeoTreeFloatBorder WinSeparator
  hi! link NeoTreeFloatTitle Title
  hi NeoTreeGitAdded guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitConflict guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitDeleted guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitIgnored guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitModified guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitUnstaged guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitUntracked guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitStaged guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["nvim-tree.lua"]
  hi! link NvimTreeSymlink Underlined
  hi! link NvimTreeSymlinkIcon Directory
  hi NvimTreeFolderName guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeRootFolder guifg=#bf9eee guibg=NONE gui=true cterm=true
  hi! link NvimTreeFolderIcon Directory
  hi NvimTreeEmptyFolderName guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeExecFile guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeOpenedFile guifg=#bf9eee guibg=NONE gui=true cterm=true
  hi NvimTreeModifiedFile guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi! link NvimTreeSpecialFile Special
  hi NvimTreeIndentMarker guifg=#3F3B52 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitDirty guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitStaged guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitMerge guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitRenamed guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitNew guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitDeleted guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeNormal guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
  hi! link NvimTreeNormalFloat NvimTreeNormal
  hi NvimTreeEndOfBuffer guifg=#262626 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeWinSeparator guifg=#262626 guibg=#262626 gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["which-key.nvim"]
  hi WhichKey guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi WhichKeyDesc guifg=#ffb86c guibg=NONE gui=italic cterm=italic
  hi WhichKeySeparator guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi WhichKeyGroup guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["dashboard-nvim"]
  hi DashboardHeader guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi DashboardFooter guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi! link DashboardDesc Directory
  hi DashboardKey guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi! link DashboardIcon Directory
  hi DashboardShotCut guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["gitsigns.nvim"]
  hi GitSignsAdd guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi GitSignsChange guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi GitSignsDelete guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["neogit"]
  hi! link NeogitCursorLine CursorLine
  hi NeogitBranch guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi NeogitRemote guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi NeogitHunkHeader guifg=#bf9eee guibg=#3F3B52 gui=NONE cterm=NONE
  hi! link NeogitHunkHeaderHighlight Title
  hi NeogitDiffContextHighlight guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
  hi NeogitDiffContext guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
  hi NeogitDiffDeleteHighlight guifg=#ee6666 guibg=#46333D gui=NONE cterm=NONE
  hi NeogitDiffDelete guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi NeogitDiffAddHighlight guifg=#62e884 guibg=#314742 gui=NONE cterm=NONE
  hi NeogitDiffAdd guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["todo-comments.nvim"]
  hi TodoFgTODO guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi TodoFgWARN guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi TodoFgTEST guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi TodoFgPERF guifg=#e7ee98 guibg=NONE gui=NONE cterm=NONE
  hi TodoFgNOTE guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi TodoFgHACK guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi TodoFgFIX guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi TodoSignTODO guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi TodoSignWARN guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi TodoSignTEST guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi TodoSignPERF guifg=#e7ee98 guibg=NONE gui=NONE cterm=NONE
  hi TodoSignNOTE guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi TodoSignHACK guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi TodoSignFIX guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi TodoBgTODO guifg=#bf9eee guibg=NONE gui=reverse cterm=reverse
  hi TodoBgWARN guifg=#ffb86c guibg=NONE gui=reverse cterm=reverse
  hi TodoBgTEST guifg=#62e884 guibg=NONE gui=reverse cterm=reverse
  hi TodoBgPERF guifg=#e7ee98 guibg=NONE gui=reverse cterm=reverse
  hi TodoBgNOTE guifg=#adf6f6 guibg=NONE gui=reverse cterm=reverse
  hi TodoBgHACK guifg=#f286c4 guibg=NONE gui=reverse cterm=reverse
  hi TodoBgFIX guifg=#ee6666 guibg=NONE gui=reverse cterm=reverse
endif

if g:dracula-soft.plugins["lazy.nvim"]
  hi LazyH1 guifg=#bf9eee guibg=#262626 gui=NONE cterm=NONE
  hi LazyButton guifg=#f8f8f2 guibg=#44475a gui=NONE cterm=NONE
  hi LazyButtonActive guifg=NONE guibg=#44475a gui=NONE cterm=NONE
  hi LazyReasonStart guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["telescope.nvim"]
  hi! link TelescopeSelection CursorLine
  hi TelescopeSelectionCaret guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi TelescopeMultiIcon guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
  hi TelescopeNormal guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
  hi! link TelescopePreviewNormal TelescopeNormal
  hi! link TelescopePromptNormal TelescopeNormal
  hi! link TelescopeResultsNormal TelescopeNormal
  hi TelescopeBorder guifg=#bf9eee guibg=#262626 gui=NONE cterm=NONE
  hi! link TelescopePromptBorder TelescopeBorder
  hi! link TelescopeResultsBorder TelescopeBorder
  hi! link TelescopePreviewBorder TelescopeBorder
  hi TelescopeTitle guifg=#bf9eee guibg=#3F3B52 gui=NONE cterm=NONE
  hi! link TelescopePromptTitle TelescopeTitle
  hi! link TelescopeResultsTitle TelescopeTitle
  hi! link TelescopePreviewTitle TelescopeTitle
  hi TelescopeMatching guifg=#bf9eee guibg=#3F3B52 gui=NONE cterm=NONE
  hi! link TelescopePreviewMatch TelescopeMatching
  hi! link TelescopePromptCounter NonText
  hi TelescopePromptPrefix guifg=#bf9eee guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["noice.nvim"]
  hi NoiceFormatProgressTodo guifg=#62e884 guibg=#314742 gui=NONE cterm=NONE
  hi NoiceFormatProgressDone guifg=#62e884 guibg=NONE gui=reverse cterm=reverse
  hi NoiceLspProgressSpinner guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi NoiceLspProgressClient guifg=#62e884 guibg=NONE gui=NONE cterm=NONE
  hi! link NoiceLspProgressTitle Title
endif

if g:dracula-soft.plugins["hop.nvim"]
  hi HopNextKey guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi HopNextKey1 guifg=#adf6f6 guibg=NONE gui=NONE cterm=NONE
  hi HopUnmatched guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["mini.statusline"]
  hi MiniStatuslineModeNormal guifg=#282a36 guibg=#bf9eee gui=NONE cterm=NONE
  hi MiniStatuslineModeInsert guifg=#282a36 guibg=#62e884 gui=NONE cterm=NONE
  hi MiniStatuslineModeVisual guifg=#e7ee98 guibg=#282a36 gui=NONE cterm=NONE
  hi MiniStatuslineModeReplace guifg=#ee6666 guibg=#282a36 gui=NONE cterm=NONE
  hi MiniStatuslineModeCommand guifg=#ffb86c guibg=#282a36 gui=NONE cterm=NONE
  hi MinistatusLineFileName guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
  hi MiniStatuslineDevinfo guifg=#f8f8f2 guibg=#44475a gui=NONE cterm=NONE
  hi MiniStatuslineFileinfo guifg=#f8f8f2 guibg=#44475a gui=NONE cterm=NONE
  hi MiniStatuslineInactive guifg=#7b7f8b guibg=#282a36 gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["mini.tabline"]
  hi MiniTablineCurrent guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
  hi MiniTablineVisible guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
  hi MiniTablineHidden guifg=#7b7f8b guibg=#282a36 gui=NONE cterm=NONE
  hi! link MiniTablineModifiedCurrent MiniTabLineCurrent
  hi! link MiniTablineModifiedVisible MiniTablineVisible
  hi! link MiniTablineModifiedHidden MiniTablineHidden
  hi MiniTablineFill guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
  hi MiniTablineTabpagesection guifg=#f8f8f2 guibg=#262626 gui=NONE cterm=NONE
endif

if g:dracula-soft.plugins["mini.starter"]
  hi! link MiniStarterCurrent CursorLine
  hi MiniStarterHeader guifg=#ee6666 guibg=NONE gui=NONE cterm=NONE
  hi MiniStarterFooter guifg=#7b7f8b guibg=NONE gui=NONE cterm=NONE
  hi MiniStarterItem guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi MiniStarterItemBullet guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi MiniStarterItemPrefix guifg=#f286c4 guibg=NONE gui=NONE cterm=NONE
  hi! link MiniStarterSection Title
  hi MiniStarterQuery guifg=#f286c4 guibg=NONE gui=bold cterm=bold
endif

if g:dracula-soft.plugins["mini.cursorword"]
  hi! link MiniCursorword Visual
endif