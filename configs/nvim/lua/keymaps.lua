
local map = vim.api.nvim_set_keymap
options = { noremap = true }

-- Formatter
map("n", "<leader>F", ":Format<cr>", options)


-- Telescope
map("n", "<leader>f", ":lua require('telescope.builtin').find_files()<cr>", options)
map("n", "<leader>b", ":lua require('telescope.builtin').buffers()<cr>", options)
map("n", "<leader>g", ":lua require('telescope.builtin').grep_string()<cr>", options)

-- cmake4vim
map("n", "<leader>xc", ":CMake<cr>", options)
map("n", "<leader>xb", ":CMakeBuild<cr>", options)
map("n", "<leader>xR", ":CMakeReset<cr>", options)
map("n", "<leader>xr", ":CMakeRun<cr>", options)
map("n", "<leader>xt", ":FZFCMakeSelectTarget<cr>", options)

-- chadtree
map("n", "<leader>v", ":CHADopen<cr>", options)

-- terminal
map("t", "<leader><ESC>", "<C-\\><C-n>", options)

