--  Vim color file writen in lua
--  Maintainer:   Felix Strobel <mail@felixstrobel.de>
--  Last Change:  15.08.2021
--
-- Possible giu/cterm formats
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
hi { group = "Type",                                 gui=none,          guifg=wp04}
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
hi { group = "TSAnnotation",                                            guifg=wp07,      guibg=wp00}
hi { group = "TSAttribute",                                             guifg=wp07,      guibg=wp00}
hi { group = "TSBoolean",                            gui='bold',        guifg=wp07}
hi { group = "TSCharacter",                                             guifg=wp07,      guibg=wp00}
hi { group = "TSComment",                                               guifg=wp06}
hi { group = "TSConditional",                                           guifg=wp07,      guibg=wp00}
hi { group = "TSConstant",                                              guifg=wp07,      guibg=wp00}
hi { group = "TSConstBuiltin",                                          guifg=wp07,      guibg=wp00}
hi { group = "TSConstMacro",                                            guifg=wp07,      guibg=wp00}
hi { group = "TSConstructor",                                           guifg=wp07}
hi { group = "TSError",                                                 guifg=wp07,      guibg=wp00}
hi { group = "TSException",                                             guifg=wp07,      guibg=wp00}
hi { group = "TSField",                                                 guifg=wp15}
hi { group = "TSFloat",                                                 guifg=wp07,      guibg=wp00}
hi { group = "TSFunction",                                              guifg=wp02}
hi { group = "TSFuncBuiltin",                                           guifg=wp02}
hi { group = "TSFuncMacro",                                             guifg=wp07,      guibg=wp00}
hi { group = "TSInclude",                            gui='italic',      guifg=wp07}
hi { group = "TSKeyword",                                               guifg=wp12}
hi { group = "TSKeywordFunction",                                       guifg=wp02}
hi { group = "TSKeywordReturn",                                         guifg=wp15}
hi { group = "TSLabel",                                                 guifg=wp07,      guibg=wp00}
hi { group = "TSMethod",                             gui="bold",        guifg=wp03}
hi { group = "TSNamespace",                                             guifg=wp03}
hi { group = "TSNone",                                                  guifg=wp07}
hi { group = "TSNumber",                                                guifg=wp15}
hi { group = "TSOperator",                                              guifg=wp15}
hi { group = "TSParameter",                                             guifg=wp07,      guibg=wp00}
hi { group = "TSParameterReference",                                    guifg=wp07,      guibg=wp00}
hi { group = "TSProperty",                                              guifg=wp07}
hi { group = "TSPunctDelimeter",                                        guifg=wp15,      guibg=wp00}
hi { group = "TSPunctBracket",                                          guifg=wp15}
hi { group = "TSPunctSpecial",                                          guifg=wp15}
hi { group = "TSRepeat",                                                guifg=wp07,      guibg=wp00}
hi { group = "TSString",                             gui='italic',      guifg=wp14}
hi { group = "TSStringRegex",                                           guifg=wp13}
hi { group = "TSStringEscape",                                          guifg=wp13}
hi { group = "TSStringSpecial",                                         guifg=wp13}
hi { group = "TSSymbol",                                                guifg=wp07,      guibg=wp00}
hi { group = "TSTag",                                                   guifg=wp07,      guibg=wp00}
hi { group = "TSTagAttribute",                                          guifg=wp07,      guibg=wp00}
hi { group = "TSTagDelimiter",                                          guifg=wp07,      guibg=wp00}
hi { group = "TSText",                                                  guifg=wp07,      guibg=wp00}
hi { group = "TSStrong",                                                guifg=wp07,      guibg=wp00}
hi { group = "TSEmphasis",                                              guifg=wp07,      guibg=wp00}
hi { group = "TSUnderline",                                             guifg=wp07,      guibg=wp00}
hi { group = "TSStrike",                                                guifg=wp07,      guibg=wp00}
hi { group = "TSTitle",                                                 guifg=wp07,      guibg=wp00}
hi { group = "TSLiteral",                                               guifg=wp07,      guibg=wp00}
hi { group = "TSURI",                                                   guifg=wp07,      guibg=wp00}
hi { group = "TSMath",                                                  guifg=wp07,      guibg=wp00}
hi { group = "TSTextReference",                                         guifg=wp07,      guibg=wp00}
hi { group = "TSEnvironment",                                           guifg=wp03}
hi { group = "TSEnvironmentName",                                       guifg=wp04,      guibg=wp00}
hi { group = "TSNote",                                                  guifg=wp07,      guibg=wp00}
hi { group = "TSWarning",                                               guifg=wp07,      guibg=wp00}
hi { group = "TSDanker",                                                guifg=wp07}
hi { group = "TSType",                                                  guifg=wp10}
hi { group = "TSTypeBuiltin",                                           guifg=wp02}
hi { group = "TSVariable",                                              guifg=wp11}
hi { group = "TSVariableBuiltin",                                       guifg=wp11}


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

-- Treesitter
hi { group = 'TSDefinition',                                            guifg=wp00,      guibg=wp11}
hi { group = 'TSDefinitionUsage',                                       guifg=wp00,      guibg=wp13}

