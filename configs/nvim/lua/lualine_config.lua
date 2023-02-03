require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "16color",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      statusline = {
        -- "dapui_watches",
        -- "dapui_breakpoints",
        -- "dapui_scopes",
        -- "dapui_console",
        -- "dapui_stacks",
        -- "dap-repl",
      },
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filename" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },

  tabline = {
    lualine_a = {
      {
        "buffers",
        show_filename_only = true, -- Shows shortened relative path when set to false.
        hide_filename_extension = false, -- Hide filename extension when set to true.
        show_modified_status = true, -- Shows indicator when the buffer is modified.

        mode = 2, -- 0: Shows buffer name
        -- 1: Shows buffer index
        -- 2: Shows buffer name + buffer index
        -- 3: Shows buffer number
        -- 4: Shows buffer name + buffer number
        --
        max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
        -- -- it can also be a function that returns
        -- -- the value of `max_length` dynamically.
        filetype_names = {
          TelescopePrompt = "Telescope",
          dashboard = "Dashboard",
          packer = "Packer",
          fzf = "FZF",
          alpha = "Alpha",
        }, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )

        buffers_color = {
          -- Same values as the general color option can be used here.
          active = "lualine_b_normal", -- Color for active buffer.
          inactive = "lualine_c_inactive", -- Color for inactive buffer.
        },

        symbols = {
          modified = " ●", -- Text to show when the buffer is modified
          alternate_file = "#", -- Text to show to identify the alternate file
          directory = "", -- Text to show when the buffer is a directory
        },
      },
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {},
})
