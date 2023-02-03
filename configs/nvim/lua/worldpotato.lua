--  Vim color file writen in lua
--  Maintainer:   Felix Strobel <mail@felixstrobel.de>
--  Last Change:  15.08.2021
--
-- Possible gui/cterm formats
-- bold
-- underline
-- undercurl
-- strikethrough
-- reverse
-- inverse
-- italic
-- standout
-- nocombine
-- NONE

--  First remove all existing highlighting

vim.cmd([[
  highlight clear
  syntax reset
]])

vim.g.colors_name = "worldpotato"
-- vim.opt.background = "dark"

-- Normal colors
local wp00 = 000 -- black
local wp01 = 001 -- red
local wp02 = 002 -- green
local wp03 = 003 -- yellow
local wp04 = 004 -- blue
local wp05 = 005 -- magenta
local wp06 = 006 -- cyan
local wp07 = 007 -- white

-- Bright colors

local wp08 = 008 -- black
local wp09 = 009 -- red
local wp10 = 010 -- green
local wp11 = 011 -- yellow
local wp12 = 012 -- blue
local wp13 = 013 -- magenta
local wp14 = 014 -- cyan
local wp15 = 015 -- white

vim.g.terminal_color_0 = wp00
vim.g.terminal_color_1 = wp01
vim.g.terminal_color_2 = wp02
vim.g.terminal_color_3 = wp03
vim.g.terminal_color_4 = wp04
vim.g.terminal_color_5 = wp05
vim.g.terminal_color_6 = wp06
vim.g.terminal_color_7 = wp07
vim.g.terminal_color_8 = wp08
vim.g.terminal_color_9 = wp09
vim.g.terminal_color_10 = wp10
vim.g.terminal_color_11 = wp11
vim.g.terminal_color_12 = wp12
vim.g.terminal_color_13 = wp13
vim.g.terminal_color_14 = wp14
vim.g.terminal_color_15 = wp15

local hi = function(opts)
  vim.cmd(
    string.format(
      "hi %s ctermfg=%s guifg=%s ctermbg=%s guibg=%s cterm=%s gui=%s",
      opts.group,
      opts.guifg or "NONE",
      opts.guifg or "NONE",
      opts.guibg or "NONE",
      opts.guibg or "NONE",
      opts.gui or "NONE",
      opts.gui or "NONE"
    )
  )
end

local link = function(from, to)
  vim.cmd(string.format("hi! link %s %s", from, to))
end

hi({ group = "ErrorMsg", guifg = wp01 })

-- Groups used in the 'highlight' and 'guicursor' options default value.
hi({ group = "IncSearch", gui = "NONE" })
hi({ group = "ModeMsg", gui = "NONE" })
hi({ group = "VertSplit", gui = "reverse", guifg = wp00 })
hi({ group = "Visual", gui = "NONE", guifg = wp00, guibg = wp07 })
hi({ group = "VisualNOS", gui = "NONE" })
hi({ group = "DiffText", gui = "NONE", guifg = wp01, guibg = wp00 })
hi({ group = "Directory", gui = "NONE", guifg = wp04 })
hi({ group = "LineNr", gui = "NONE", guifg = wp07, guibg = wp00 })
hi({ group = "CursorLineNr", gui = "bold", guifg = wp15, guibg = wp00 })
hi({ group = "MoreMsg", gui = "NONE", guifg = wp02 })
hi({ group = "Question", gui = "NONE", guifg = wp02 })
hi({ group = "Search", gui = "NONE", guifg = wp08, guibg = wp11 })
hi({ group = "Whitespace", gui = "NONE", guifg = wp08 })
hi({ group = "SpecialKey", gui = "NONE", guifg = wp08, guibg = wp01 })
hi({ group = "Title", gui = "NONE", guifg = wp05 })
hi({ group = "WarningMsg", gui = "NONE", guifg = wp01 })
hi({ group = "WildMenu", gui = "NONE", guifg = wp00, guibg = wp11 })
hi({ group = "Folded", gui = "NONE", guifg = wp04, guibg = wp00 })
hi({ group = "FoldColumn", gui = "NONE", guifg = wp04, guibg = wp07 })
hi({ group = "DiffAdd", gui = "NONE", guifg = wp10, guibg = wp00 })
hi({ group = "DiffChange", gui = "NONE", guifg = wp05, guibg = wp00 })
hi({ group = "DiffDelete", gui = "NONE", guifg = wp01, guibg = wp00 })
hi({ group = "SpellBad", gui = "undercurl", guifg = wp15, guibg = wp01 })
hi({ group = "NonText", gui = "NONE", guifg = wp03 })
hi({ group = "MatchParen", gui = "NONE", guifg = wp00, guibg = wp01 })
hi({ group = "Pmenu", gui = "NONE", guifg = wp07, guibg = wp00 })
hi({ group = "PmenuThumb", gui = "NONE", guifg = wp06, guibg = wp08 })
hi({ group = "PmenuSbar", gui = "NONE", guifg = wp06, guibg = wp07 })
hi({ group = "PmenuSel", gui = "NONE", guifg = wp15, guibg = wp08 })
hi({ group = "SignColumn", gui = "NONE", guifg = wp15, guibg = wp00 })

-- GitSigns
hi({ group = "GitSignsColumn", gui = "NONE", guifg = wp10, guibg = wp00 })
hi({ group = "GitSignsAdd", gui = "NONE", guifg = wp10, guibg = wp00 })
hi({ group = "GitSignsChange", gui = "NONE", guifg = wp11, guibg = wp00 })
hi({ group = "GitSignsDelete", gui = "NONE", guifg = wp09, guibg = wp00 })

hi({ group = "GitSignsAddNr", gui = "NONE", guifg = wp01, guibg = wp00 })
hi({ group = "GitSignsChangeNr", gui = "NONE", guifg = wp01, guibg = wp00 })
hi({ group = "GitSignsDeleteNr", gui = "NONE", guifg = wp01, guibg = wp00 })

hi({ group = "GitSignsAddLn", gui = "bold", guifg = wp01, guibg = wp00 })
hi({ group = "GitSignsChangeLn", gui = "bold", guifg = wp01, guibg = wp00 })
hi({ group = "GitSignsDeleteLn", gui = "NONE", guifg = wp01, guibg = wp00 })
hi({ group = "GitSignsCurrentLineBlame", gui = "NONE", guifg = wp09, guibg = wp00 })

-- VGit
hi({ group = "GitBackground", gui = "NONE", guifg = "NONE", guibg = wp00 })
hi({ group = "GitHeader", gui = "NONE", guifg = wp09, guibg = wp00 })
hi({ group = "GitFooter", gui = "NONE", guifg = wp09, guibg = wp00 })


--  syntax highlighting
hi({ group = "PreProc", gui = "NONE", guifg = wp01 })
hi({ group = "Identifier", gui = "NONE", guifg = wp05 })
hi({ group = "Comment", gui = "NONE", guifg = wp06 })
hi({ group = "Constant", gui = "NONE", guifg = wp02 })
hi({ group = "Special", gui = "NONE", guifg = wp14 })
hi({ group = "Statement", gui = "NONE", guifg = wp12 })
hi({ group = "Type", gui = "NONE", guifg = wp12 })
--
--  Line and column mark
hi({ group = "CursorLine", gui = "NONE", guibg = wp00 })
hi({ group = "CursorColumn", gui = "NONE", guibg = wp00 })

--  termdebug
hi({ group = "debugPC", gui = "bold", guifg = wp00, guibg = wp03 })
hi({ group = "debugBreakpoint", gui = "bold", guifg = wp07, guibg = wp01 })

--  nvim-lsp
hi({ group = "LspDiagnosticsSignError", gui = "bold", guifg = wp01, guibg = wp00 })
hi({ group = "LspDiagnosticsVirtualTextError", gui = "bold", guifg = wp09, guibg = wp00 })
hi({ group = "LspDiagnosticsSignWarning", gui = "bold", guifg = wp03, guibg = wp00 })
hi({ group = "LspDiagnosticsVirtualTextWarning", gui = "bold", guifg = wp03 })
hi({ group = "LspDiagnosticsSignInformation", gui = "bold", guifg = wp00, guibg = wp07 })
hi({ group = "LspDiagnosticsVirtualTextInformation", gui = "bold", guifg = wp07 })

-- Treesitter
hi({ group = "@annotation", guifg = wp07, guibg = wp00 })
hi({ group = "@attribute", guifg = wp07, guibg = wp00 })
hi({ group = "@boolean", gui = "bold", guifg = wp14 })
hi({ group = "@character", guifg = wp07, guibg = wp00 })
hi({ group = "@comment", gui = "italic", guifg = wp06 })
hi({ group = "@conditional", gui = "italic", guifg = wp12 })
hi({ group = "@constant", gui = "bold", guifg = wp06 })
hi({ group = "@constant.builtin", gui = "italic", guifg = wp04 })
hi({ group = "@const.macro", guifg = wp07, guibg = wp00 })
hi({ group = "@constructor", gui = "bold", guifg = wp05 })
hi({ group = "@error", gui = "undercurl", guifg = wp07, guibg = wp00 })
hi({ group = "@exception", guifg = wp07, guibg = wp00 })
hi({ group = "@field", gui = "bold", guifg = wp06 })
hi({ group = "@float", guifg = wp07, guibg = "NONE" })
hi({ group = "@function", gui = "bold", guifg = wp07 })
hi({ group = "@function.call", gui = "bold", guifg = wp11 })
hi({ group = "@function.macro", gui = "bold", guifg = wp05 })
hi({ group = "@func.builtin", guifg = wp02 })
hi({ group = "@func.macro", guifg = wp15, guibg = wp00 })
hi({ group = "@include", guifg = wp06 })
hi({ group = "@keyword", gui = "bold", guifg = wp03 })
hi({ group = "@keyword.function", gui = "bold", guifg = wp11 })
hi({ group = "@keyword.return", gui = "bold", guifg = wp09 })
hi({ group = "@label", guifg = wp07, guibg = wp00 })
hi({ group = "@method", gui = "bold", guifg = wp12 })
hi({ group = "@namespace", gui = "bold", guifg = wp03 })
hi({ group = "@none", guifg = wp07 })
hi({ group = "@number", guifg = wp15 })
hi({ group = "@operator", guifg = wp15 })
hi({ group = "@parameter", gui = "italic", guifg = wp15 })
hi({ group = "@parameter.reference", guifg = wp07, guibg = wp00 })
hi({ group = "@property", guifg = wp07 })
hi({ group = "@punctuation.bracket", guifg = wp07 })
hi({ group = "@punctuation.delimiter", guifg = wp07 })
hi({ group = "@punctuation.special", guifg = wp07 })
hi({ group = "@punct.bracket", guifg = wp15 })
hi({ group = "@punct.special", guifg = wp15 })
hi({ group = "@repeat", gui = "italic", guifg = wp12 })
hi({ group = "@string", gui = "bold", guifg = wp02 })
hi({ group = "@string.regex", guifg = wp13 })
hi({ group = "@string.escape", guifg = wp13 })
hi({ group = "@string.special", guifg = wp13 })
hi({ group = "@symbol", guifg = wp07, guibg = wp00 })
hi({ group = "@special", guifg = wp07, guibg = wp00 })
hi({ group = "@tag", guifg = wp07, guibg = wp00 })
hi({ group = "@tag.attribute", guifg = wp07, guibg = wp00 })
hi({ group = "@tag.delimiter", guifg = wp07, guibg = wp00 })
hi({ group = "@text", guifg = wp07, guibg = wp00 })
hi({ group = "@strong", guifg = wp07, guibg = wp00 })
hi({ group = "@emphasis", guifg = wp07, guibg = wp00 })
hi({ group = "@underline", guifg = wp07, guibg = wp00 })
hi({ group = "@strike", guifg = wp07, guibg = wp00 })
hi({ group = "@title", guifg = wp07, guibg = wp00 })
hi({ group = "@literal", guifg = wp07, guibg = wp00 })
hi({ group = "@uri", guifg = wp07, guibg = wp00 })
hi({ group = "@math", guifg = wp07, guibg = wp00 })
hi({ group = "@text.reference", guifg = wp07, guibg = wp00 })
hi({ group = "@environment", guifg = wp03 })
hi({ group = "@environment.name", guifg = wp04, guibg = wp00 })
hi({ group = "@note", guifg = wp07, guibg = wp00 })
hi({ group = "@warning", guifg = wp07, guibg = wp00 })
hi({ group = "@danker", guifg = wp07 })
hi({ group = "@type", gui = "bold", guifg = wp04 })
hi({ group = "@type.qualifier", gui = "NONE", guifg = wp12 })
hi({ group = "@type.builtin", gui = "bold", guifg = wp02 })
hi({ group = "@variable", guifg = wp07 })
hi({ group = "@variable.builtin", guifg = wp11 })
hi({ group = "@definition", gui = "underline", guifg = wp00, guibg = wp15 }) -- mark if cursor stays on word
hi({ group = "@definition.usage", guifg = wp00, guibg = wp15 })

-- DAP debug
hi({ group = "DapUIVariable", guifg = wp07 })
hi({ group = "DapUIValue", guifg = wp15 })
hi({ group = "DapUIFloatBorder", guifg = wp04 })
hi({ group = "DapUIScope", guifg = wp04 })
hi({ group = "DapUIType", guifg = wp05 })
hi({ group = "DapUIModifiedValue", guifg = wp13 })
hi({ group = "DapUIDecoration", guifg = wp15 })
hi({ group = "DapUIThread", guifg = wp04 })
hi({ group = "DapUIStoppedThread", guifg = wp13 })
hi({ group = "DapUIFrameName", guifg = wp03 })
hi({ group = "DapUISource", guifg = wp07 })
hi({ group = "DapUILineNumber", guifg = wp07 })
hi({ group = "DapUIWatchesEmpty", guifg = wp04, guibg = wp00 })
hi({ group = "DapUIWatchesValue", guifg = wp01, guibg = wp00 })
hi({ group = "DapUIWatchesError", guifg = wp00, guibg = wp01 })
hi({ group = "DapUIBreakpointsPath", guifg = wp15 })
hi({ group = "DapUIBreakpointsInfo", guifg = wp15 })
hi({ group = "DapUIBreakpointsCurrentLine", guifg = wp02 })
hi({ group = "DapUIBreakpointsLine", guifg = wp02 })
hi({ group = "001", guifg = wp01 })

hi({ group = "NvimDapVirtualText", guifg = wp06 })
hi({ group = "NvimDapVirtualTextError", guifg = wp01 })
hi({ group = "NvimDapVirtualTextInfo", guifg = wp03 })
hi({ group = "NvimDapVirtualTextChanged", guifg = wp02 })

hi({ group = "DapBreakpointSignText", guifg = wp01, guibg = wp00 })
-- hi { group = "DapBreakpointSignLine",                                   guifg=wp03}
hi({ group = "DapBreakpointSignNum", guifg = wp07, guibg = wp00 })
hi({ group = "DapBreakpointPositionText", guifg = wp03 })
hi({ group = "DapBreakpointPositionLine", guifg = wp03 })
hi({ group = "DapBreakpointPositionNum", guifg = wp03 })

hi({ group = "RustHints", gui = "italic", guifg = wp07, guibg = wp08 })
-- Telescope
-- hi { group = 'TelescopePreviewMessageFillchar',                         guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsSpecialComment',                          guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsDiffUntracked',                           guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsIdentifier',                              guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsDiffDelete',                              guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsDiffChange',                              guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewDirectory',                               guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsVariable',                                guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsOperator',                                guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsFunction',                                guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsConstant',                                guifg=wp00,      guibg=wp00}
hi({ group = "TelescopeSelectionCaret", guifg = wp07, guibg = wp08 })
-- hi { group = 'TelescopeResultsDiffAdd',                                 guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsComment',                                 guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewMessage',                                 guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewExecute',                                 guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewCharDev',                                 guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeMultiSelection',                                 guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsStruct',                                  guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsNumber',                                  guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsMethod',                                  guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsLineNr',                                  guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsBorder',                                  guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewSticky',                                  guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewSocket',                                  guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewNormal',                                  guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewHyphen',                                  guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewBorder',                                  guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsTitle',                                   guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsField',                                   guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeResultsClass',                                   guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePromptPrefix',                                   guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePromptBorder',                                   guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewWrite',                                   guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewTitle',                                   guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewMatch',                                   guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewGroup',                                   guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewBlock',                                   guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePromptTitle',                                    guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewUser',                                    guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewSize',                                    guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewRead',                                    guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewPipe',                                    guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewLink',                                    guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewLine',                                    guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopePreviewDate',                                    guifg=wp00,      guibg=wp00}
hi({ group = "TelescopeSelection", guifg = wp15, guibg = wp08 })
hi({ group = "TelescopeMatching", guifg = wp11 })
hi({ group = "TelescopeNormal", guifg = wp07, guibg = wp00 })
hi({ group = "TelescopeBorder", guifg = wp00, guibg = wp00 })
hi({ group = "TelescopeTitle", guifg = wp07, guibg = wp00 })

hi({ group = "UltestPass", guifg = wp02, guibg = wp00 })
hi({ group = "UltestFail", guifg = wp01, guibg = wp00 })
hi({ group = "UltestRunning", guifg = wp03, guibg = wp00 })

-- hi UltestBorder ctermfg=Red guifg=#F70067
-- hi UltestSummaryInfo ctermfg=cyan guifg=#00F1F5 gui=bold cterm=bold
-- hi link UltestSummaryFile UltestSummaryInfo
-- hi link UltestSummaryNamespace UltestSummaryInfo
--
hi({ group = "DiagnosticError", guifg = wp01, guibg = wp00 })
hi({ group = "DiagnosticWarn", guifg = wp03, guibg = wp00 })
hi({ group = "DiagnosticInfo", guifg = wp07, guibg = wp00 })
hi({ group = "DiagnosticHint", guifg = wp06, guibg = wp00 })
hi({ group = "DiagnosticVirtualTextError", guibg = wp00, guifg = wp01 })
hi({ group = "DiagnosticVirtualTextWarn", guibg = wp00, guifg = wp03 })
hi({ group = "DiagnosticVirtualTextInfo", guibg = wp00, guifg = wp07 })
hi({ group = "DiagnosticVirtualTextHint", guibg = wp00, guifg = wp06 })

hi({ group = "StatusLineNc", guibg = wp00, guifg = wp06 })

hi({ group = "SymbolsOutlineConnector", guifg = wp07 })
hi({ group = "FocusedSymbol", guifg = wp00, guibg = wp02 })
