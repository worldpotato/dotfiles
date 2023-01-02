-- Loading Rust specific plugins
require("rust-tools_config") -- should be before the lsp_config otherwise some commands are not working

local opts = { noremap = true, silent = true }

-- Hover actions
vim.keymap.set("n", "<Leader>rh", require("rust-tools").hover_actions.hover_actions, opts)
-- Code action groups
vim.keymap.set("n", "<Leader>ra", require("rust-tools").code_action_group.code_action_group, opts)
-- run/debug
vim.keymap.set("n", "<Leader>rr", require('rust-tools').runnables.runnables, opts)
vim.keymap.set("n", "<Leader>rd", require('rust-tools').debuggables.debuggables, opts)
