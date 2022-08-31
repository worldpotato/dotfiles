vim.cmd("colorscheme worldpotato")

vim.cmd("source ~/.config/nvim/init_vim")

require("plugins")
require("lsp_config")
require("treesitter_config")
require("gitsigns_config")
require("nvim_commit_config")
require("completion_config")
require("debug_config")
require("formatter_config")
require("keymaps")
require("telescope_config")

