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

vim.cmd [[
  highlight clear
  syntax reset
]]

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
    string.format("hi %s ctermfg=%s guifg=%s ctermbg=%s guibg=%s cterm=%s gui=%s", 
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

hi { group = "ErrorMsg",                             guibg=wp00,         guibg=wp01}

 -- Groups used in the 'highlight' and 'guicursor' options default value.
hi { group = "IncSearch",                            gui=none}
hi { group = "ModeMsg",                              gui=none}
hi { group = "VertSplit",                            gui='bold',        guifg=wp06}
hi { group = "Visual",                               gui=none,          guifg=wp00,      guibg=wp07}
hi { group = "VisualNOS",                            gui=none}
hi { group = "DiffText",                             gui=none,          guifg=wp01,      guibg=wp00}
hi { group = "Directory",                            gui=none,          guifg=wp04}
hi { group = "LineNr",                               gui=none,          guifg=wp07,      guibg=wp00}
hi { group = "CursorLineNr",                         gui='bold',        guifg=wp15,      guibg=wp00}
hi { group = "MoreMsg",                              gui=none,          guifg=wp02}
hi { group = "Question",                             gui=none,          guifg=wp02}
hi { group = "Search",                               gui=none,          guifg=wp08,      guibg=wp11}
hi { group = "Whitespace",                           gui=none,          guifg=wp08}
hi { group = "SpecialKey",                           gui=none,          guifg=wp08,      guibg=wp01}
hi { group = "Title",                                gui=none,          guifg=wp05}
hi { group = "WarningMsg",                           gui=none,          guifg=wp01}
hi { group = "WildMenu",                             gui=none,          guifg=wp00,      guibg=wp11}
hi { group = "Folded",                               gui=none,          guifg=wp04,      guibg=wp00}
hi { group = "FoldColumn",                           gui=none,          guifg=wp04,      guibg=wp07}
hi { group = "DiffAdd",                              gui=none,          guifg=wp10,      guibg=wp00}
hi { group = "DiffChange",                           gui=none,          guifg=wp05,      guibg=wp00}
hi { group = "DiffDelete",                           gui=none,          guifg=wp01,      guibg=wp00}
hi { group = "SpellBad",                             gui='undercurl',   guifg=wp15,      guibg=wp01}
hi { group = "NonText",                              gui=none,          guifg=wp03}
hi { group = "MatchParen",                           gui=none,          guifg=wp00,      guibg=wp01}
hi { group = "Pmenu",                                gui=none,          guifg=wp07,      guibg=wp00}
hi { group = "PmenuThumb",                           gui=none,          guifg=wp06,      guibg=wp08}
hi { group = "PmenuSbar",                            gui=none,          guifg=wp06,      guibg=wp07}
hi { group = "PmenuSel",                             gui=none,          guifg=wp15,      guibg=wp08}
hi { group = "SignColumn",                           gui=none,          guifg=wp15,      guibg=wp00}

-- GitSigns
hi { group = "GitSignsColumn",                       gui=none,          guifg=wp10,      guibg=wp00}
hi { group = "GitSignsAdd",                          gui=none,          guifg=wp10,      guibg=wp00}
hi { group = "GitSignsChange",                       gui=none,          guifg=wp11,      guibg=wp00}
hi { group = "GitSignsDelete",                       gui=none,          guifg=wp09,      guibg=wp00}

hi { group = "GitSignsAddNr",                        gui=none,          guifg=wp01,      guibg=wp00}
hi { group = "GitSignsChangeNr",                     gui=none,          guifg=wp01,      guibg=wp00}
hi { group = "GitSignsDeleteNr",                     gui=none,          guifg=wp01,      guibg=wp00}

hi { group = "GitSignsAddLn",                        gui='bold',          guifg=wp01,      guibg=wp00}
hi { group = "GitSignsChangeLn",                     gui='bold',          guifg=wp01,      guibg=wp00}
hi { group = "GitSignsDeleteLn",                     gui=none,          guifg=wp01,      guibg=wp00}
hi { group = "GitSignsCurrentLineBlame",             gui=none,          guifg=wp09,      guibg=wp00}
 
--  syntax highlighting
hi { group = "PreProc",                              gui=none,          guifg=wp01}
hi { group = "Identifier",                           gui=none,          guifg=wp05}
hi { group = "Comment",                              gui=none,          guifg=wp06}
hi { group = "Constant",                             gui=none,          guifg=wp02}
hi { group = "Special",                              gui=none,          guifg=wp14}
hi { group = "Statement",                            gui=none,          guifg=wp12}
hi { group = "Type",                                 gui=none,          guifg=wp12}
--
--  Line and column mark
hi { group = "CursorLine",                           gui=none,                         guibg = wp00}
hi { group = "CursorColumn",                         gui=none,                         guibg = wp00}

--  termdebug
hi { group = "debugPC",                              gui='bold',          guifg=wp00,      guibg=wp03}
hi { group = "debugBreakpoint",                      gui='bold',          guifg=wp07,      guibg=wp01}

--  nvim-lsp
hi { group = "LspDiagnosticsSignError",              gui='bold',          guifg=wp00,      guibg=wp01}
hi { group = "LspDiagnosticsVirtualTextError",       gui='bold',          guifg=wp00,      guibg=wp09}
hi { group = "LspDiagnosticsSignWarning",            gui='bold',          guifg=wp00,      guibg=wp03}
hi { group = "LspDiagnosticsVirtualTextWarning",     gui='bold',          guifg=wp03}
hi { group = "LspDiagnosticsSignInformation",        gui='bold',          guifg=wp00,      guibg=wp07}
hi { group = "LspDiagnosticsVirtualTextInformation", gui='bold',          guifg=wp07}

-- Treesitter
hi { group = "@Annotation",                                            guifg=wp07,      guibg=wp00}
hi { group = "@Attribute",                                             guifg=wp07,      guibg=wp00}
hi { group = "@Boolean",                            gui='bold',        guifg=wp14}
hi { group = "@Character",                                             guifg=wp07,      guibg=wp00}
hi { group = "@Comment",                                               guifg=wp06}
hi { group = "@Conditional",                                           guifg=wp14}
hi { group = "@Constant",                           gui='bold',        guifg=wp06}
hi { group = "@ConstBuiltin",                       gui='bold',        guifg=wp05}
hi { group = "@ConstMacro",                                            guifg=wp07,      guibg=wp00}
hi { group = "@Constructor",                        gui='bold',        guifg=wp05}
hi { group = "@Error",                              gui='undercurl',   guifg=wp07,      guibg=wp00}
hi { group = "@Exception",                                             guifg=wp07,      guibg=wp00}
hi { group = "@Field",                              gui='bold',        guifg=wp06}
hi { group = "@Float",                                                 guifg=wp07,      guibg=wp00}
hi { group = "@function",                           gui='bold',        guifg=wp05}
hi { group = "@function.call",                      gui='bold',        guifg=wp11}
hi { group = "@function.macro",                     gui='bold',        guifg=wp12}
hi { group = "@FuncBuiltin",                                           guifg=wp02}
hi { group = "@FuncMacro",                                             guifg=wp15,      guibg=wp00}
hi { group = "@Include",                                               guifg=wp06}
hi { group = "@Keyword",                            gui='bold',        guifg=wp06}
hi { group = "@KeywordFunction",                    gui='bold',        guifg=wp11}
hi { group = "@KeywordReturn",                      gui='bold',        guifg=wp11}
hi { group = "@Label",                                                 guifg=wp07,      guibg=wp00}
hi { group = "@Method",                             gui="bold",        guifg=wp12}
hi { group = "@Namespace",                          gui="bold",        guifg=wp03}
hi { group = "@None",                                                  guifg=wp07}
hi { group = "@Number",                                                guifg=wp15}
hi { group = "@Operator",                                              guifg=wp14}
hi { group = "@Parameter",                          gui='bold',        guifg=wp09}
hi { group = "@ParameterReference",                                    guifg=wp07,      guibg=wp00}
hi { group = "@Property",                                              guifg=wp07}
hi { group = "@Punctuation.bracket",                                   guifg=wp07}
hi { group = "@Punctuation.delimiter",                                 guifg=wp07}
hi { group = "@Punctuation.Special",                                   guifg=wp07}
hi { group = "@PunctBracket",                                          guifg=wp15}
hi { group = "@PunctSpecial",                                          guifg=wp15}
hi { group = "@Repeat",                             gui='bold',        guifg=wp14}
hi { group = "@String",                             gui='bold',        guifg=wp02}
hi { group = "@StringRegex",                                           guifg=wp13}
hi { group = "@StringEscape",                                          guifg=wp13}
hi { group = "@StringSpecial",                                         guifg=wp13}
hi { group = "@Symbol",                                                guifg=wp07,      guibg=wp00}
hi { group = "@Tag",                                                   guifg=wp07,      guibg=wp00}
hi { group = "@TagAttribute",                                          guifg=wp07,      guibg=wp00}
hi { group = "@TagDelimiter",                                          guifg=wp07,      guibg=wp00}
hi { group = "@Text",                                                  guifg=wp07,      guibg=wp00}
hi { group = "@Strong",                                                guifg=wp07,      guibg=wp00}
hi { group = "@Emphasis",                                              guifg=wp07,      guibg=wp00}
hi { group = "@Underline",                                             guifg=wp07,      guibg=wp00}
hi { group = "@Strike",                                                guifg=wp07,      guibg=wp00}
hi { group = "@Title",                                                 guifg=wp07,      guibg=wp00}
hi { group = "@Literal",                                               guifg=wp07,      guibg=wp00}
hi { group = "@URI",                                                   guifg=wp07,      guibg=wp00}
hi { group = "@Math",                                                  guifg=wp07,      guibg=wp00}
hi { group = "@TextReference",                                         guifg=wp07,      guibg=wp00}
hi { group = "@Environment",                                           guifg=wp03}
hi { group = "@EnvironmentName",                                       guifg=wp04,      guibg=wp00}
hi { group = "@Note",                                                  guifg=wp07,      guibg=wp00}
hi { group = "@Warning",                                               guifg=wp07,      guibg=wp00}
hi { group = "@Danker",                                                guifg=wp07}
hi { group = "@Type",                               gui='bold',        guifg=wp14}
hi { group = "@TypeBuiltin",                        gui='bold',        guifg=wp02}
hi { group = "@Variable",                                              guifg=wp07}
hi { group = "@VariableBuiltin",                                       guifg=wp11}
hi { group = '@Definition',                         gui='underline',   guifg=wp00,      guibg=wp15} -- mark if cursor stays on word
hi { group = '@DefinitionUsage',                                       guifg=wp00,      guibg=wp15}

-- DAP debug
hi { group = "DapUIVariable",                                           guifg=wp07}
hi { group = "DapUIValue",                                              guifg=wp15}
hi { group = "DapUIFloatBorder",                                        guifg=wp04}
hi { group = "DapUIScope",                                              guifg=wp04}
hi { group = "DapUIType",                                               guifg=wp05}
hi { group = "DapUIModifiedValue",                                      guifg=wp13}
hi { group = "DapUIDecoration",                                         guifg=wp15}
hi { group = "DapUIThread",                                             guifg=wp04}
hi { group = "DapUIStoppedThread",                                      guifg=wp13}
hi { group = "DapUIFrameName",                                          guifg=wp03}
hi { group = "DapUISource",                                             guifg=wp07}
hi { group = "DapUILineNumber",                                         guifg=wp07}
hi { group = "DapUIWatchesEmpty",                                       guifg=wp04,      guibg=wp00}
hi { group = "DapUIWatchesValue",                                       guifg=wp01,      guibg=wp00}
hi { group = "DapUIWatchesError",                                       guifg=wp00,      guibg=wp01}
hi { group = "DapUIBreakpointsPath",                                    guifg=wp15}
hi { group = "DapUIBreakpointsInfo",                                    guifg=wp15}
hi { group = "DapUIBreakpointsCurrentLine",                             guifg=wp02}
hi { group = "DapUIBreakpointsLine",                                    guifg=wp02}

hi { group = "NvimDapVirtualText",                                      guifg=wp06}
hi { group = "NvimDapVirtualTextError",                                 guifg=wp01}
hi { group = "NvimDapVirtualTextInfo",                                  guifg=wp03}

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
hi { group = 'TelescopeSelectionCaret',                                 guifg=wp07,      guibg=wp08}
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
hi { group = 'TelescopeSelection',                                      guifg=wp15,      guibg=wp08}
hi { group = 'TelescopeMatching',                                       guifg=wp11}
-- hi { group = 'TelescopeNormal',                                         guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeBorder',                                         guifg=wp00,      guibg=wp00}
-- hi { group = 'TelescopeTitle',                                          guifg=wp00,      guibg=wp00}

hi { group = 'UltestPass',                                              guifg=wp02,      guibg=wp00}
hi { group = 'UltestFail',                                              guifg=wp01,      guibg=wp00}
hi { group = 'UltestRunning',                                           guifg=wp03,      guibg=wp00}

-- hi UltestBorder ctermfg=Red guifg=#F70067
-- hi UltestSummaryInfo ctermfg=cyan guifg=#00F1F5 gui=bold cterm=bold
-- hi link UltestSummaryFile UltestSummaryInfo
-- hi link UltestSummaryNamespace UltestSummaryInfo
--
