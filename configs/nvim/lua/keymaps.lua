
local map = vim.api.nvim_set_keymap
options = { noremap = true }

-- Formatter
map("n", "<leader>F", ":Format<cr>", options)


-- Telescope
map("n", "<leader>f", ":lua require('telescope.builtin').find_files()<cr>", options)
map("n", "<leader>b", ":lua require('telescope.builtin').buffers()<cr>", options)
map("n", "<leader>g", ":lua require('telescope.builtin').live_grep()<cr>", options)
map("n", "<leader>h", ":lua require('telescope.builtin').help_tags()<cr>", options)

-- cmake4vim
map("n", "<leader>xc", ":CMake<cr>", options)
map("n", "<leader>xb", ":CMakeBuild<cr>", options)
map("n", "<leader>xR", ":CMakeReset<cr>", options)
map("n", "<leader>xr", ":CMakeRun<cr>", options)
map("n", "<leader>xt", ":FZFCMakeSelectTarget<cr>", options)

-- chadtree
map("n", "<leader>v", ":CHADopen<cr>", options)

-- terminal
map("t", "<ESC><ESC>", "<C-\\><C-n>", options)
map("n", "<leader>tt", ":lua require('FTerm').toggle()<CR>", options)

-- dap
-- map("n", "<F1>", ":Ultest<CR>", options)
-- map("n", "<F2>", ":UltestNearest<CR>", options)
-- map("n", "<F4>", ":UltestDebugNearest<CR>", options)
map("n", "<F4>", ":lua require('dapui').open()<CR>", options)
map("n", "<Shift>F4", ":lua require'dap'.run_last()<CR>", options)
map("n", "<F5>", ":lua require'dap'.continue()<CR>", options)
map("n", "<F6>", ":lua require'dap'.step_over()<CR>", options)
map("n", "<F7>", ":lua require'dap'.step_into()<CR>", options)
map("n", "<F8>", ":lua require'dap'.step_out()<CR>", options)
map("n", "<F9>", ":lua require('dapui').close()<CR>", options)

-- dap
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
vim.api.nvim_set_keymap( "n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)

-- lsp.
-- See `:help vim.lsp.*` for documentation on any of the below functions
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", opts)
vim.api.nvim_set_keymap("n", "gic", "<cmd>lua require('telescope.builtin').lsp_incoming_calls()<CR>", opts)
vim.api.nvim_set_keymap("n", "goc", "<cmd>lua require('telescope.builtin').lsp_outcoming_calls()<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-k", "<cmd>lua require('telescope.builtin').lsp_workspace_symols()<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-q>", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>lua require('telescope.builtin').diagnostics()<CR>", opts)
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>", opts)
vim.api.nvim_set_keymap("n", "gtd", "<cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>", opts)
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua require('teiescope.builtin').lsp_implementations()<CR>", opts)
vim.api.nvim_set_keymap("n", "gc", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>rf", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader><space>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

-- vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
-- vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)

