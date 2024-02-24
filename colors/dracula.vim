vim9script

# dracula Colorscheme for vim
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
g:colors_name = 'dracula'
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
    "#6272A4",
    "#44475A",
    "#282A36",
    "#21222C",
    "#8BE9FD",
    "#FF5555",
    "#8BE9FD",
    "#8BE9FD",
    "#50FA7B",
    "#FFB86C",
    "#50FA7B",
    "#FFB86C",
    "#FF5555",
    "#50FA7A",
    "#538C98",
    "#FFB86C",
    "#FF79C6",
    "#BD93F9",
    "#FF5555",
    "#2E4940",
    "#483F3E",
    "#374754",
    "#48303B",
    "#2E4940",
    "#374754",
    "#374754",
    "#2E4940",
    "#483F3E",
    "#5E3E5A",
    "#3E3A53",
    "#48303B",
    "#483F3E",
    "#464943",
    "#F1FA8C",
    ]
endif


hi ColorColumn guifg=NONE guibg=#21222c gui=NONE cterm=NONE
hi Conceal guifg=#44475A guibg=NONE gui=NONE cterm=NONE
hi CurSearch guifg=#8be9fd guibg=#374754 gui=NONE cterm=NONE
hi Cursor guifg=#282a36 guibg=#8be9fd gui=NONE cterm=NONE
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi! link CursorColumn ColorColumn
hi CursorLine guifg=NONE guibg=#44475A gui=NONE cterm=NONE
hi Directory guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
hi DiffChange guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
hi DiffDelete guifg=#ff5555 guibg=NONE gui=reverse cterm=reverse
hi DiffText guifg=#8be9fd guibg=NONE gui=reverse cterm=reverse
hi EndOfBuffer guifg=#282a36 guibg=NONE gui=NONE cterm=NONE
hi! link TermCursor Cursor
hi TermCursorNC guifg=#f8f8f2 guibg=NONE gui=reverse cterm=reverse
hi ErrorMsg guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
hi WinSeparator guifg=#6272a4 guibg=#21222c gui=NONE cterm=NONE
hi Folded guifg=#f8f8f2 guibg=#44475A gui=NONE cterm=NONE
hi FoldColumn guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
hi! link SignColumn Normal
hi IncSearch guifg=#8be9fd guibg=#374754 gui=bold cterm=bold
hi! link Substitute IncSearch
hi LineNr guifg=#6272a4 guibg=#282a36 gui=NONE cterm=NONE
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi CursorLineNr guifg=#bd93f9 guibg=#282a36 gui=NONE cterm=NONE
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi MatchParen guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
hi! link MsgArea Normal
hi! link MsgSeparator Normal
hi! link MoreMsg ModeMsg
hi NonText guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
hi Normal guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
hi NormalFloat guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
hi! link FloatBorder WinSeparator
hi FloatTitle guifg=#bd93f9 guibg=NONE gui=true cterm=true
hi! link NormalNC Normal
hi Pmenu guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
hi PmenuSel guifg=#8be9fd guibg=NONE gui=reverse cterm=reverse
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
hi PmenuSbar guifg=NONE guibg=#21222c gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#8be9fd gui=NONE cterm=NONE
hi Question guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
hi QuickFixLine guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
hi Search guifg=NONE guibg=#44475A gui=NONE cterm=NONE
hi! link SpecialKey NonText
hi SpellBad guifg=NONE guibg=NONE gui=strikethrough,underline cterm=strikethrough,underline
hi SpellCap guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
hi! link SpellLocal SpellCap
hi SpellRare guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
hi StatusLineNC guifg=#6272a4 guibg=#21222c gui=NONE cterm=NONE
hi TabLine guifg=#6272a4 guibg=#21222c gui=NONE cterm=NONE
hi TabLineFill guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
hi TabLineSel guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
hi Title guifg=#bd93f9 guibg=NONE gui=true cterm=true
hi Visual guifg=NONE guibg=#44475A gui=NONE cterm=NONE
hi! link VisualNOS Visual
hi warningMsg guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
hi Whitespace guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#44475A guibg=NONE gui=NONE cterm=NONE
hi! link WinBar Pmenu
hi! link WinBarNC WinBar
hi Comment guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
hi String guifg=#f1fa8c guibg=NONE gui=NONE cterm=NONE
hi Character guifg=#f1fa8c guibg=NONE gui=NONE cterm=NONE
hi Number guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#50fa7a guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Label guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Structure guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
hi Tag guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Debug guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=#8be9fd guibg=NONE gui=underline cterm=underline
hi Ignore guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#ff5555 guibg=NONE gui=bold cterm=bold
hi Todo guifg=#bd93f9 guibg=NONE gui=true cterm=true
if g:dracula.plugins["nvim-treesitter"]
  hi @variable guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @variable.builtin guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @variable.parameter guifg=#ffb86c guibg=NONE gui=italic cterm=italic
  hi @variable.member guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @constant guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @constant.builtin guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @constant.macro guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @module guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @module.builtin guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @label guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @string guifg=#f1fa8c guibg=NONE gui=NONE cterm=NONE
  hi @string.documentation guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @string.regexp guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi @string.escape guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @string.special guifg=#f1fa8c guibg=NONE gui=NONE cterm=NONE
  hi @string.special.symbol guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi! link @string.special.url Underlined
  hi @character guifg=#f1fa8c guibg=NONE gui=NONE cterm=NONE
  hi @character.special guifg=#f1fa8c guibg=NONE gui=NONE cterm=NONE
  hi @character.printf guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi @type guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @type.builtin guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @type.definition guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @type.qualifier guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @function guifg=#50fa7a guibg=NONE gui=NONE cterm=NONE
  hi @function.builtin guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @function.call guifg=#50fa7a guibg=NONE gui=NONE cterm=NONE
  hi @function.macro guifg=#50fa7a guibg=NONE gui=NONE cterm=NONE
  hi @function.method guifg=#50fa7a guibg=NONE gui=NONE cterm=NONE
  hi @function.method.call guifg=#50fa7a guibg=NONE gui=NONE cterm=NONE
  hi @constructor guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @constructor.lua guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @operator guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.coroutine guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.function guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.operator guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.import guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.repeat guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.return guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.debug guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.exception guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.conditional guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.conditional.ternary guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.directive guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @keyword.directive.define guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @punctuation.delimiter guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @punctuation.bracket guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @punctuation.special guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @comment guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi @comment.documentation guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi @comment.error guifg=#ff5555 guibg=#48303B gui=NONE cterm=NONE
  hi @comment.warning guifg=#ffb86c guibg=#483F3E gui=NONE cterm=NONE
  hi @comment.todo guifg=#bd93f9 guibg=#3E3A53 gui=NONE cterm=NONE
  hi @comment.note guifg=#8be9fd guibg=#374754 gui=NONE cterm=NONE
  hi @markup.strong guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi @markup.italic guifg=#f1fa8c guibg=NONE gui=italic cterm=italic
  hi @markup.strikethrough guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi @markup.underline guifg=#8be9fd guibg=NONE gui=underline cterm=underline
  hi @markup.heading guifg=#bd93f9 guibg=NONE gui=true cterm=true
  hi @markup.quote guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi @markup.math guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @markup.environment guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi @markup.link guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi @markup.link.label guifg=#8be9fd guibg=NONE gui=underline cterm=underline
  hi @markup.link.url guifg=#8be9fd guibg=NONE gui=underline cterm=underline
  hi @markup.raw guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi @markup.raw.block guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi @markup.list guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @markup.list.checked guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi @markup.list.unchecked guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi @diff.plus guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi @diff.minus guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi @diff.delta guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi @tag guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @tag.attribute guifg=#50fa7a guibg=NONE gui=NONE cterm=NONE
  hi @tag.delimiter guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @property.yaml guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @property.json guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @property.css guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @property.scss guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["nvim-lspconfig"]
  hi @lsp.type.class guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.decorator guifg=#50fa7a guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.enum guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.enumMember guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.interface guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.macro guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.namespace guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.parameter guifg=#ffb86c guibg=NONE gui=italic cterm=italic
  hi @lsp.type.property guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.struct guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.type guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.typeParameter guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @lsp.type.variable guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.variable.defaultLibrary guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.variable.readonly guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.variable.global guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.keyword.documentation guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.class.documentation guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi @lsp.typemod.property.readonly guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticError guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticWarn guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticInfo guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticHint guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticOk guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextError guifg=#ff5555 guibg=#48303B gui=NONE cterm=NONE
  hi DiagnosticVirtualTextWarn guifg=#ffb86c guibg=#483F3E gui=NONE cterm=NONE
  hi DiagnosticVirtualTextInfo guifg=#8be9fd guibg=#374754 gui=NONE cterm=NONE
  hi DiagnosticVirtualTextHint guifg=#8be9fd guibg=#374754 gui=NONE cterm=NONE
  hi DiagnosticVirtualTextOk guifg=#50fa7b guibg=#2E4940 gui=NONE cterm=NONE
  hi DiagnosticUnderlineError guifg=#ff5555 guibg=NONE gui=underline cterm=underline
  hi DiagnosticUnderlineWarn guifg=#ffb86c guibg=NONE gui=underline cterm=underline
  hi DiagnosticUnderlineInfo guifg=#8be9fd guibg=NONE gui=underline cterm=underline
  hi DiagnosticUnderlineHint guifg=#8be9fd guibg=NONE gui=underline cterm=underline
  hi DiagnosticUnderlineOk guifg=#50fa7b guibg=NONE gui=underline cterm=underline
  hi! link LspReferenceText Visual
  hi! link LspReferenceRead Visual
  hi! link LspReferenceWrite Visual
  hi LspInlayHint guifg=#538c98 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["nvim-navic"]
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

if g:dracula.plugins["nvim-cmp"]
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

if g:dracula.plugins["indent-blankline.nvim"]
  hi IblIndent guifg=#3E3A53 guibg=NONE gui=NONE cterm=NONE
  hi IblScope guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["bufferline.nvim"]
  hi BufferLineSeparator guifg=#21222c guibg=#21222c gui=NONE cterm=NONE
  hi BufferLineSeparatorSelected guifg=#21222c guibg=#282a36 gui=NONE cterm=NONE
  hi BufferLineBufferSelected guifg=#f8f8f2 guibg=NONE gui=bold cterm=bold
  hi BufferLineFill guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
  hi BufferLineIndicatorSelected guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi BufferLineBufferVisible guifg=#6272a4 guibg=#282a36 gui=NONE cterm=NONE
endif

if g:dracula.plugins["neo-tree.nvim"]
  hi NeoTreeNormal guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
  hi! link NeoTreeNormalNC NeoTreeNormal
  hi NeoTreeDotFile guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi! link NeoTreeFileNameOpened Directory
  hi! link NeoTreeFloatBorder WinSeparator
  hi! link NeoTreeFloatTitle Title
  hi NeoTreeGitAdded guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitConflict guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitDeleted guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitIgnored guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitModified guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitUnstaged guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitUntracked guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NeoTreeGitStaged guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["nvim-tree.lua"]
  hi! link NvimTreeSymlink Underlined
  hi! link NvimTreeSymlinkIcon Directory
  hi NvimTreeFolderName guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeRootFolder guifg=#bd93f9 guibg=NONE gui=true cterm=true
  hi! link NvimTreeFolderIcon Directory
  hi NvimTreeEmptyFolderName guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeExecFile guifg=#50fa7a guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeOpenedFile guifg=#bd93f9 guibg=NONE gui=true cterm=true
  hi NvimTreeModifiedFile guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi! link NvimTreeSpecialFile Special
  hi NvimTreeIndentMarker guifg=#3E3A53 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitDirty guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitStaged guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitMerge guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitRenamed guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitNew guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitDeleted guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeNormal guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
  hi! link NvimTreeNormalFloat NvimTreeNormal
  hi NvimTreeEndOfBuffer guifg=#21222c guibg=NONE gui=NONE cterm=NONE
  hi NvimTreeWinSeparator guifg=#21222c guibg=#21222c gui=NONE cterm=NONE
endif

if g:dracula.plugins["which-key.nvim"]
  hi WhichKey guifg=#50fa7a guibg=NONE gui=NONE cterm=NONE
  hi WhichKeyDesc guifg=#ffb86c guibg=NONE gui=italic cterm=italic
  hi WhichKeySeparator guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi WhichKeyGroup guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["dashboard-nvim"]
  hi DashboardHeader guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi DashboardFooter guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi! link DashboardDesc Directory
  hi DashboardKey guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi! link DashboardIcon Directory
  hi DashboardShotCut guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["gitsigns.nvim"]
  hi GitSignsAdd guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi GitSignsChange guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi GitSignsDelete guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["neogit"]
  hi! link NeogitCursorLine CursorLine
  hi NeogitBranch guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi NeogitRemote guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi NeogitHunkHeader guifg=#bd93f9 guibg=#3E3A53 gui=NONE cterm=NONE
  hi! link NeogitHunkHeaderHighlight Title
  hi NeogitDiffContextHighlight guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
  hi NeogitDiffContext guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
  hi NeogitDiffDeleteHighlight guifg=#ff5555 guibg=#48303B gui=NONE cterm=NONE
  hi NeogitDiffDelete guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi NeogitDiffAddHighlight guifg=#50fa7b guibg=#2E4940 gui=NONE cterm=NONE
  hi NeogitDiffAdd guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["todo-comments.nvim"]
  hi TodoFgTODO guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi TodoFgWARN guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi TodoFgTEST guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi TodoFgPERF guifg=#f1fa8c guibg=NONE gui=NONE cterm=NONE
  hi TodoFgNOTE guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi TodoFgHACK guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi TodoFgFIX guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi TodoSignTODO guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi TodoSignWARN guifg=#ffb86c guibg=NONE gui=NONE cterm=NONE
  hi TodoSignTEST guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi TodoSignPERF guifg=#f1fa8c guibg=NONE gui=NONE cterm=NONE
  hi TodoSignNOTE guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi TodoSignHACK guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi TodoSignFIX guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi TodoBgTODO guifg=#bd93f9 guibg=NONE gui=reverse cterm=reverse
  hi TodoBgWARN guifg=#ffb86c guibg=NONE gui=reverse cterm=reverse
  hi TodoBgTEST guifg=#50fa7b guibg=NONE gui=reverse cterm=reverse
  hi TodoBgPERF guifg=#f1fa8c guibg=NONE gui=reverse cterm=reverse
  hi TodoBgNOTE guifg=#8be9fd guibg=NONE gui=reverse cterm=reverse
  hi TodoBgHACK guifg=#ff79c6 guibg=NONE gui=reverse cterm=reverse
  hi TodoBgFIX guifg=#ff5555 guibg=NONE gui=reverse cterm=reverse
endif

if g:dracula.plugins["lazy.nvim"]
  hi LazyH1 guifg=#bd93f9 guibg=#21222c gui=NONE cterm=NONE
  hi LazyButton guifg=#f8f8f2 guibg=#44475A gui=NONE cterm=NONE
  hi LazyButtonActive guifg=NONE guibg=#44475A gui=NONE cterm=NONE
  hi LazyReasonStart guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["telescope.nvim"]
  hi! link TelescopeSelection CursorLine
  hi TelescopeSelectionCaret guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi TelescopeMultiIcon guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
  hi TelescopeNormal guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
  hi! link TelescopePreviewNormal TelescopeNormal
  hi! link TelescopePromptNormal TelescopeNormal
  hi! link TelescopeResultsNormal TelescopeNormal
  hi TelescopeBorder guifg=#bd93f9 guibg=#21222c gui=NONE cterm=NONE
  hi! link TelescopePromptBorder TelescopeBorder
  hi! link TelescopeResultsBorder TelescopeBorder
  hi! link TelescopePreviewBorder TelescopeBorder
  hi TelescopeTitle guifg=#bd93f9 guibg=#3E3A53 gui=NONE cterm=NONE
  hi! link TelescopePromptTitle TelescopeTitle
  hi! link TelescopeResultsTitle TelescopeTitle
  hi! link TelescopePreviewTitle TelescopeTitle
  hi TelescopeMatching guifg=#bd93f9 guibg=#3E3A53 gui=NONE cterm=NONE
  hi! link TelescopePreviewMatch TelescopeMatching
  hi! link TelescopePromptCounter NonText
  hi TelescopePromptPrefix guifg=#bd93f9 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["noice.nvim"]
  hi NoiceFormatProgressTodo guifg=#50fa7b guibg=#2E4940 gui=NONE cterm=NONE
  hi NoiceFormatProgressDone guifg=#50fa7b guibg=NONE gui=reverse cterm=reverse
  hi NoiceLspProgressSpinner guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi NoiceLspProgressClient guifg=#50fa7b guibg=NONE gui=NONE cterm=NONE
  hi! link NoiceLspProgressTitle Title
endif

if g:dracula.plugins["hop.nvim"]
  hi HopNextKey guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi HopNextKey1 guifg=#8be9fd guibg=NONE gui=NONE cterm=NONE
  hi HopUnmatched guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
endif

if g:dracula.plugins["mini.statusline"]
  hi MiniStatuslineModeNormal guifg=#282a36 guibg=#bd93f9 gui=NONE cterm=NONE
  hi MiniStatuslineModeInsert guifg=#282a36 guibg=#50fa7a gui=NONE cterm=NONE
  hi MiniStatuslineModeVisual guifg=#f1fa8c guibg=#282a36 gui=NONE cterm=NONE
  hi MiniStatuslineModeReplace guifg=#ff5555 guibg=#282a36 gui=NONE cterm=NONE
  hi MiniStatuslineModeCommand guifg=#ffb86c guibg=#282a36 gui=NONE cterm=NONE
  hi MinistatusLineFileName guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
  hi MiniStatuslineDevinfo guifg=#f8f8f2 guibg=#44475A gui=NONE cterm=NONE
  hi MiniStatuslineFileinfo guifg=#f8f8f2 guibg=#44475A gui=NONE cterm=NONE
  hi MiniStatuslineInactive guifg=#6272a4 guibg=#282a36 gui=NONE cterm=NONE
endif

if g:dracula.plugins["mini.tabline"]
  hi MiniTablineCurrent guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
  hi MiniTablineVisible guifg=#f8f8f2 guibg=#282a36 gui=NONE cterm=NONE
  hi MiniTablineHidden guifg=#6272a4 guibg=#282a36 gui=NONE cterm=NONE
  hi! link MiniTablineModifiedCurrent MiniTabLineCurrent
  hi! link MiniTablineModifiedVisible MiniTablineVisible
  hi! link MiniTablineModifiedHidden MiniTablineHidden
  hi MiniTablineFill guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
  hi MiniTablineTabpagesection guifg=#f8f8f2 guibg=#21222c gui=NONE cterm=NONE
endif

if g:dracula.plugins["mini.starter"]
  hi! link MiniStarterCurrent CursorLine
  hi MiniStarterHeader guifg=#ff5555 guibg=NONE gui=NONE cterm=NONE
  hi MiniStarterFooter guifg=#6272a4 guibg=NONE gui=NONE cterm=NONE
  hi MiniStarterItem guifg=#f8f8f2 guibg=NONE gui=NONE cterm=NONE
  hi MiniStarterItemBullet guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi MiniStarterItemPrefix guifg=#ff79c6 guibg=NONE gui=NONE cterm=NONE
  hi! link MiniStarterSection Title
  hi MiniStarterQuery guifg=#ff79c6 guibg=NONE gui=bold cterm=bold
endif

if g:dracula.plugins["mini.cursorword"]
  hi! link MiniCursorword Visual
endif