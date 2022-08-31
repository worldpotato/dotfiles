local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local fn = vim.fn

-- install packer if needed
-- if fn.empty(fn.glob(install_path)) > 0 then
--    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
--    execute('packadd packer.nvim')
-- end

require("packer").startup(function()
  local use = require("packer").use

  -- The plugin manager
  use({ "wbthomason/packer.nvim", opt = true })

  -- language server configs
  use({ "neovim/nvim-lspconfig" })

  -- completion
  use({ "hrsh7th/nvim-compe" })

  -- treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "nvim-treesitter/nvim-treesitter-refactor" })
  use({ "nvim-treesitter/playground" })

  -- the statusbar and buffer bar
  use({
    "taohexxx/lightline-buffer",
    requires = {
      "itchyny/lightline.vim",
    },
  })

  -- showing the git actions
  use({
    "lewis6991/gitsigns.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })

  -- use git from inside vim
  use({ "tpope/vim-fugitive" })

  -- toggle comments
  use({ "terrortylor/nvim-comment" })

  -- using fzf
  use({
    "ibhagwan/fzf-lua",
    requires = {
      "vijaymarupudi/nvim-fzf",
      "kyazdani42/nvim-web-devicons", -- optional for icons
    },
  })

  -- Latex
  use({ "lervag/vimtex" })

  -- DAP Debug
  use({
    "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap" },
  })

  use({
    "theHamsta/nvim-dap-virtual-text",
    requires = { "mfussenegger/nvim-dap", "nvim-treesitter/nvim-treesitter" },
  })

  -- cmake
  use({ "ilyachur/cmake4vim" })

  -- format
  use({ "mhartington/formatter.nvim" })

  -- better terminals
  use({
    "s1n7ax/nvim-terminal",
    config = function()
      vim.o.hidden = true
      require("nvim-terminal").setup()
    end,
  })

  use({
    "termhn/i3-vim-nav",
    requires = {
      "christoomey/vim-tmux-navigator",
    },
  })

  -- bazel
  use({
    "google/vim-maktaba",
  })
  use({
    "bazelbuild/vim-bazel",
  })

  -- TMUX
  use({
    "aserowy/tmux.nvim",
    config = function()
      require("tmux").setup({
        -- overwrite default configuration
        -- here, e.g. to enable default bindings
        copy_sync = {
          -- enables copy sync and overwrites all register actions to
          -- sync registers *, +, unnamed, and 0 till 9 from tmux in advance
          enable = true,
        },
        navigation = {
          -- enables default keybindings (C-hjkl) for normal mode
          enable_default_keybindings = true,
        },
        resize = {
          -- enables default keybindings (A-hjkl) for normal mode
          enable_default_keybindings = true,
        },
      })
    end,
  })

  use({
    "chaoren/vim-wordmotion",
  })

  use({
    "ms-jpq/chadtree",
  })

  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
  })
end)
