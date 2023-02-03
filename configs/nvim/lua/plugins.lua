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
  -- ui improvement
 -- use({ "stevearc/dressing.nvim" })
--  use({ "nvim-telescope/telescope-symbols.nvim" })

  -- The plugin manager
  --use({ "wbthomason/packer.nvim", opt = true })

  --use({ "williamboman/mason.nvim" })
  --use({ "williamboman/mason-lspconfig.nvim" })
  --use({ "neovim/nvim-lspconfig" })

  --use({ "simrat39/symbols-outline.nvim" })

  -- toggle comments
  --use({ "terrortylor/nvim-comment" })
  --
  --   -- treesitter
  --use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  --use({ "nvim-treesitter/playground" })
  --
  --   -- completion
  use({ "hrsh7th/nvim-cmp" })
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-buffer" })
  use({ "hrsh7th/cmp-path" })
  use({ "hrsh7th/cmp-cmdline" })
  use({ "hrsh7th/cmp-vsnip" })
  --
  --   -- snippets
  --   use({ 'hrsh7th/vim-vsnip'})
  --   -- completion
  --
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

  --use({
    --"nvim-telescope/telescope-dap.nvim",
    --requires = {
      --"nvim-telescope/telescope.nvim",
      --"mfussenegger/nvim-dap",
    --},
  --})

  -- the statusbar and buffer bar
  -- use({
    -- "nvim-lualine/lualine.nvim",
    -- requires = { "kyazdani42/nvim-web-devicons", opt = true },
  -- })

  -- use({
  --   "taohexxx/lightline-buffer",
  --   requires = {
  --     "itchyny/lightline.vim",
  --   },
  -- })
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
  use({
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
    tag = "nightly", -- optional, updated every week. (see issue #1193)
  })
  use({ "Pocco81/auto-save.nvim" })
  use({ "windwp/nvim-autopairs" })

  -- better terminals
  use({
    "s1n7ax/nvim-terminal",
    config = function()
      vim.o.hidden = true
      require("nvim-terminal").setup()
    end,
  })
  use({
    "numToStr/FTerm.nvim",
  })
  use({ "rcarriga/nvim-notify" })

  use({
    "luukvbaal/statuscol.nvim",
  })
end)
