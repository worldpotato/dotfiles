local vim = vim
-- use space as leader
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- activate mouse
vim.o.mouse = "a"
-- make splits on the right
vim.o.splitright = true
-- vim.o.noshowmode=true
vim.o.showtabline=2
-- Syntax
vim.o.syntax="on"
-- color for the vertical and horizontal line
vim.o.cursorline=false
vim.o.cursorcolumn=false
-- Height of the command bar
vim.o.cmdheight=2
-- Behavior of tab stop
vim.o.expandtab=true
vim.o.tabstop=2
vim.o.shiftwidth=2
-- FONT
vim.o.guifont="JetBrainsMono Nerd Font Mono"
-- Highlight search results
vim.o.hlsearch=true
-- Show matching brackets when text indicator is over them
vim.o.showmatch=true
-- How many tenths of a second to blink when matching brackets
vim.o.mat=10
-- autoreads a file if it is changed outside
vim.o.autoread=true
-- break the line at the end or start of a word
vim.o.linebreak=true
-- Configure backspace so it acts as it should act
vim.o.backspace="eol,start,indent"
vim.o.whichwrap=vim.o.whichwrap .. "<,>,h,l"
-- Ignore case when searching
vim.o.ignorecase=true
-- " When searching try to be smart about cases
vim.o.smartcase=true
-- " Makes search act like search in modern browsers
vim.o.incsearch=true
-- " share clipboard with x
vim.o.clipboard=vim.o.clipboard .. "unnamedplus"
-- " No annoying sound on errors
vim.o.errorbells=false
vim.o.visualbell=false
vim.o.tm=500
-- " show unprintable characters
vim.o.listchars="eol:¬,tab:┣━,trail:~,extends:>,precedes:<"
vim.opt.fillchars = {eob = ' ', vert = ' '}
vim.o.list=true
-- " shows options for tabcompletion
vim.o.wildmenu = true
-- " enable to change buffer even if it has changes
vim.o.hidden=true
-- " remove weird "O" behaviour
vim.o.ttimeout=true
vim.o.ttimeoutlen=50

vim.o.number=true
vim.o.splitkeep=screen

-- diganostics
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
vim.diagnostic.config({
  virtual_text = true
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
})

