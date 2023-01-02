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

  use({ "williamboman/mason.nvim" })
  use({ "williamboman/mason-lspconfig.nvim" })
  use({ "neovim/nvim-lspconfig"})

  -- toggle comments
  use({ "terrortylor/nvim-comment" })

  -- treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "nvim-treesitter/playground" })

  -- completion
  use({ 'hrsh7th/nvim-cmp' })
  use({ 'hrsh7th/cmp-nvim-lsp'})
  use({ 'hrsh7th/cmp-buffer'})
  use({ 'hrsh7th/cmp-path'})
  use({ 'hrsh7th/cmp-cmdline'})
  use({ 'hrsh7th/cmp-vsnip'})

  -- snippets 
  use({ 'hrsh7th/vim-vsnip'})
  -- completion

  use({
    "simrat39/rust-tools.nvim",
  })

-- showing the git actions
  use({
    "lewis6991/gitsigns.nvim",
      requires = {
        "nvim-lua/plenary.nvim",
      },
  })

  use({
     "nvim-telescope/telescope-dap.nvim",
     requires = {
       "nvim-telescope/telescope.nvim",
       "mfussenegger/nvim-dap",
     },
   })

  -- the statusbar and buffer bar
  use({
    "taohexxx/lightline-buffer",
    requires = {
      "itchyny/lightline.vim",
    },
  })
  -- DAP Debug
  use({
    "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap" },
  })

  use({
    "theHamsta/nvim-dap-virtual-text",
    requires = { "mfussenegger/nvim-dap", "nvim-treesitter/nvim-treesitter" },
  })
  -- format
  use({ "mhartington/formatter.nvim" })

  use({ "chaoren/vim-wordmotion" })
  use({ "ms-jpq/chadtree" })
  use({ "Pocco81/auto-save.nvim" })
  use({ "windwp/nvim-autopairs" })
-- new
-------------------------------------------------------------------------
-- old


  -- language server configs
  -- use({ "neovim/nvim-lspconfig" })

  -- completion
  -- use({
  --   "ms-jpq/coq_nvim",
  --   branch = "coq",
  --   requires = {
  --     "ms-jpq/coq.artifacts",
  --     branch = "artifacts",
  --     "ms-jpq/coq.thirdparty",
  --     branch = "3p",
  --   },
  -- })

  -- snippets
  -- use({ "L3MON4D3/LuaSnip" })

  -- Latex
  -- use({ "lervag/vimtex" })




  -- use({ "mfussenegger/nvim-dap-python" })

  -- cmake
  -- use({ "ilyachur/cmake4vim" })


  -- better terminals
  -- use({
  --   "s1n7ax/nvim-terminal",
  --   config = function()
  --     vim.o.hidden = true
  --     require("nvim-terminal").setup()
  --   end,
  -- })

  -- use({
  --   "termhn/i3-vim-nav",
  --   requires = {
  --     "christoomey/vim-tmux-navigator",
  --   },
  -- })

  -- bazel
  -- use({
  --   "google/vim-maktaba",
  -- })
  -- use({
  --   "bazelbuild/vim-bazel",
  -- })

  -- TMUX
  -- use({
  --   "aserowy/tmux.nvim",
  --   config = function()
  --     require("tmux").setup({
  --       -- overwrite default configuration
  --       -- here, e.g. to enable default bindings
  --       copy_sync = {
  --         -- enables copy sync and overwrites all register actions to
  --         -- registers *, +, unnamed, and 0 till 9 from tmux in advance
  --         enable = true,
  --       },
  --       navigation = {
  --         -- enables default keybindings (C-hjkl) for normal mode
  --         enable_default_keybindings = true,
  --       },
  --       resize = {
  --         -- enables default keybindings (A-hjkl) for normal mode
  --         enable_default_keybindings = true,
  --       },
  --     })
  --   end,
  -- })
  --

  -- use({
  --   "nvim-telescope/telescope.nvim",
  --   requires = { { "nvim-lua/plenary.nvim" } },
  -- })


  -- use({
  --   "numToStr/FTerm.nvim",
  -- })

  -- use({ "stevearc/dressing.nvim" })
  -- use({ "windwp/nvim-autopairs" })
  -- use({ "Pocco81/auto-save.nvim" })

  -- use({
  --   "folke/noice.nvim",
  --   requires = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --     -- OPTIONAL:
  --     --   `nvim-notify` is only needed, if you want to use the notification view.
  --     --   If not available, we use `mini` as the fallback
  --     "rcarriga/nvim-notify",
  --   },
  -- })

  -- Testrunner
  -- use {
  -- "rcarriga/vim-ultest",
  -- requires = {"vim-test/vim-test"},
  -- run = ":UpdateRemotePlugins"
  -- }
  --use({ "mhartington/formatter.nvim" })

  -- better terminals
  -- use({
  --   "s1n7ax/nvim-terminal",
  --   config = function()
end)
