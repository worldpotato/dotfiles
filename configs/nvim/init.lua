-- colorscheme
require("worldpotato")

-- install plugins
require("plugins")

-- configurations
require("settings_config")
require("lightline_config")
-- require("cmake_config")
-- require("vimtex_config")
require("fzf_config")

-- setup plugins

require("coq_config")
require("lsp_config")
require("treesitter_config")
require("gitsigns_config")
require("nvim_commit_config")
require("debug_config")
require("rust-tools_config") -- should be after the lsp_config otherwise some commands are not working
require("formatter_config")
require("telescope_config")
-- require("noice_config")
-- require("test_config")
require("autopairs_config")
require("auto-save_config")
require("keymaps")
