local vim = vim
local map = vim.api.nvim_set_keymap
local options = { noremap = false, silent = true }
-- Formatter
map("n", "<leader>F", ":Format<cr>", options)

-- Telescope
map("n", "<leader>f", "<cmd>:lua require('telescope.builtin').find_files()<cr>", options)
map("n", "<leader>b", "<cmd>:lua require('telescope.builtin').buffers()<cr>", options)
map("n", "<leader>g", "<cmd>:lua require('telescope.builtin').live_grep()<cr>", options)
map("n", "<leader>h", "<cmd>:lua require('telescope.builtin').help_tags()<cr>", options)

-- chadtree
map("n", "<leader>t", "<cmd>:NvimTreeToggle<cr>", options)
map("n", "<leader>o", "<cmd>:SymbolsOutline<cr>", options)

-- terminal
map("t", "<ESC><ESC>", "<C-\\><C-n>", options)
map("n", "<leader>T", "<cmd>:lua require('FTerm').toggle()<CR>", options)
map("t", "<leader>T", "<cmd>:lua require('FTerm').toggle()<CR>", options)

-- dap
map("n", "<F4>", "<cmd>:lua require('dapui').toggle()<CR>", options)
map("n", "<Shift>F4", ":<cmd>lua require'dap'.run_last()<CR>", options)
map("n", "<F5>", "<cmd>:lua require'dap'.continue()<CR>", options)
map("n", "<F6>", "<cmd>:lua require'dap'.step_over()<CR>", options)
map("n", "<F7>", "<cmd>:lua require'dap'.step_into()<CR>", options)
map("n", "<F8>", "<cmd>:lua require'dap'.step_out()<CR>", options)

-- dap
vim.api.nvim_set_keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", options)
vim.api.nvim_set_keymap(
  "n",
  "<leader>dB",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  options
)

-- lsp.
-- See `:help vim.lsp.*` for documentation on any of the below functions

vim.api.nvim_set_keymap("n", "<leader>pc", "<cmd>lua require('telescope.builtin').lsp_incoming_calls()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>pC", "<cmd>lua require('telescope.builtin').lsp_outgoing_calls()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>ps", "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>pS", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>pe", "<cmd>lua require('telescope.builtin').diagnostics()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>pd", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>pr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>pt", "<cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>pi", "<cmd>lua require('telescope.builtin').lsp_implementations()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>ph", "<cmd>lua vim.lsp.buf.hover()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>pn", "<cmd>lua vim.lsp.buf.rename()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader><space>", "<cmd>lua vim.lsp.buf.code_action()<CR>", options)

-- vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", options)
-- vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", options)
-- vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", options)
-- vim.api.nvim_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", options)
-- vim.api.nvim_set_keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", options)
-- vim.api.nvim_set_keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", options)
-- vim.api.nvim_set_keymap("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", options)
-- vim.api.nvim_set_keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", options)
-- vim.api.nvim_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", options)
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", options)

vim.api.nvim_set_keymap("n", "<leader>dub", '<cmd>lua require("dapui").float_element("breakpoints", {enter = true})<CR>', options)
vim.api.nvim_set_keymap("n", "<leader>duc", '<cmd>lua require("dapui").float_element("console", {enter = true})<CR>', options)
vim.api.nvim_set_keymap("n", "<leader>dur", '<cmd>lua require("dapui").float_element("repl", {enter = true})<CR>', options)
vim.api.nvim_set_keymap("n", "<leader>duw", '<cmd>lua require("dapui").float_element("watches", {enter = true})<CR>', options)
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", options)
