-- " lightline-buffer ui settings
-- " replace these symbols with ascii characters if your environment does not support unicode
vim.g.lightline_buffer_logo = ' '
vim.g.lightline_buffer_readonly_icon = ''
vim.g.lightline_buffer_modified_icon = '✭'
vim.g.lightline_buffer_git_icon = ' '
vim.g.lightline_buffer_ellipsis_icon = '..'
vim.g.lightline_buffer_expand_left_icon = '◀ '
vim.g.lightline_buffer_expand_right_icon = ' ▶'
vim.g.lightline_buffer_active_buffer_left_icon = ''
vim.g.lightline_buffer_active_buffer_right_icon = ''
vim.g.lightline_buffer_separator_icon = '  '
-- " enable devicons, only support utf-8
-- " require <https://github.com/ryanoasis/vim-devicons>
vim.g.lightline_buffer_enable_devicons = 1
-- " lightline-buffer function settings
vim.g.lightline_buffer_show_bufnr = 1
-- " :help filename-modifiers
vim.g.lightline_buffer_fname_mod = ':t'
-- " hide buffer list
vim.g.lightline_buffer_excludes = {'vimfiler'}
-- " max file name length
vim.g.lightline_buffer_maxflen = 30
-- " max file extension length
vim.g.lightline_buffer_maxfextlen = 3
-- " min file name length
vim.g.lightline_buffer_minflen = 16
-- " min file extension length
vim.g.lightline_buffer_minfextlen = 3
-- " reserve length for other component (e.g. info, close)
vim.g.lightline_buffer_reservelen = 20
vim.g.lightline = {
  ['colorscheme'] = 'colorpotato',
  ['active'] = {
    ['left'] = {
                 { 'mode', 'paste' },
                 { 'gitbranch', 'readonly', 'filename', 'modified' },
               }
  },
  ['tabline'] = {
    ['left'] = { { 'bufferinfo' }, { 'separator' }, { 'bufferbefore', 'buffercurrent', 'bufferafter' }},
    ['right'] = {},
  },
  ['component_expand'] = {
    ['buffercurrent'] = 'lightline#buffer#buffercurrent',
    ['bufferbefore'] = 'lightline#buffer#bufferbefore',
    ['bufferafter'] = 'lightline#buffer#bufferafter',
  },
  ['component_type'] = {
    ['buffercurrent'] = 'tabsel',
    ['bufferbefore'] = 'raw',
    ['bufferafter'] = 'raw',
  },
  ['component_function'] = {
    ['gitbranch'] = 'FugitiveHead',
    ['bufferinfo'] = 'lightline#buffer#bufferinfo',
  },
  ['component'] = {
    ['separator'] = '',
  },
}
