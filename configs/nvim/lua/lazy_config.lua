local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local used_languages = { "rust", "lua", "bash", "toml" }

local plugins = {
  {
    dir = "~/.config/nvim/colors",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme worldpotato]])
    end,
  },
  {
    "nvim-telescope/telescope-dap.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap",
    },
    lazy = true,
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
  {
    "nvim-telescope/telescope.nvim",
    dpendencies = {
      "nvim-lua/plenary.nvim",
    },
    lazy = false,
    config = function()
      require("telescope_config")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "nvim-telescope/telescope-symbols.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    lazy = true,
  },
  {
    "mfussenegger/nvim-dap",
    ft = used_languages,
    lazy = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    event = "VeryLazy",
    config = function()
      require("mason_config")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    ft = { "lua", "toml" },
    config = function()
      require("lsp_config")
    end,
  },
  {
    "stevearc/dressing.nvim",
    -- event = "VeryLazy",
    config = function()
      require("dressing_config")
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    event = "VeryLazy",
    config = function()
      require("symbols-outline_config")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine_config")
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    config = function()
      require("rust-tools_config")
    end,
  },
  {
    "mhartington/formatter.nvim",
    lazy = true,
    ft = used_languages,
    config = function()
      require("formatter_config")
    end,
  },
  {
    "nvim-treesitter/playground",
    lazy = true,
    ft = used_languages,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesitter_config")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    ft = used_languages,
    config = function()
      require("treesitter_config")
    end,
  },
  {
    "terrortylor/nvim-comment",
    lazy = true,
    event = "VeryLazy",
    ft = used_languages,
    config = function()
      require("nvim_comment_config")
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    lazy = true,
    event = "VeryLazy",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
    },
    config = function()
      require("completion_config")
    end,
  },
  {
    "luukvbaal/statuscol.nvim",
    lazy = true,
    event = "VeryLazy",
    config = function()
      require("statuscolumn_config")
    end,
  },
  {
    "rcarriga/nvim-dap-virtual-text",
    lazy = true,
    ft = used_languages,
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    lazy = true,
    ft = used_languages,
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("debug_config")
    end,
  },
  {
    "tanvirtin/vgit.nvim",
    lazy = true,
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("vgit_config")
    end,
  },
  {
    "numToStr/FTerm.nvim",
    lazy = true,
    event = "VeryLazy",
    config = function()
      require("fterm_config")
    end,
  },
}

require("lazy").setup(plugins, opts)
