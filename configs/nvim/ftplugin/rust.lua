local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>rh", "<cmd>RustHoverActions<CR>", opts)
-- Hover actions
vim.keymap.set("n", "<Leader>rh", require("rust-tools").hover_actions.hover_actions, opts)
-- Code action groups
vim.keymap.set("n", "<Leader>a", require("rust-tools").code_action_group.code_action_group, opts)
-- Code action groups
vim.keymap.set("n", "<Leader>rr", require('rust-tools').runnables.runnables, opts)
vim.keymap.set("n", "<Leader>rd", require('rust-tools').debuggables.debuggables, opts)
-- map("n", "<Shift>F4", ":<cmd>lua require'dap'.run_last()<CR>", options)
-- map("n", "<F5>", "<cmd>:lua require'dap'.continue()<CR>", options)
-- map("n", "<F6>", "<cmd>:lua require'dap'.step_over()<CR>", options)
-- map("n", "<F7>", "<cmd>:lua require'dap'.step_into()<CR>", options)
-- map("n", "<F8>", "<cmd>:lua require'dap'.step_out()<CR>", options)
-- map("n", "<F9>", "<cmd>:lua require('dapui').close()<CR>", options)
