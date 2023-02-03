-- This includes following things:
-- DAP configuration for:
--    - python
--    - c/cpp/rust
-- DAP-UI
-- DAP-Virtual text
local dap = require("dap")
-- hi { group = "DapBreakpointSignText",                                   guifg=wp03}
-- hi { group = "DapBreakpointSignLine",                                   guifg=wp03}
-- hi { group = "DapBreakpointSignNum",                                    guifg=wp03}
-- hi { group = "DapBreakpointPositionText",                               guifg=wp03}
-- hi { group = "DapBreakpointPositionLine",                               guifg=wp03}
-- hi { group = "DapBreakpointPositionNum",                                guifg=wp03}

vim.fn.sign_define(
  "DapBreakpoint",
  { text = "", texthl = "DapBreakpointSignText", linehl = "DapBreakpointSignLine", numhl = "DapBreakpointSignNum" }
)
vim.fn.sign_define(
  "DapPosition",
  { text = "", texthl = "DapBreakpointPositionText", linehl = "DapBreakpointPositionLine", numhl = "DapBreakpointPositionNum" }
)

-- PYTHON
dap.adapters.python = {
  type = "executable",
  command = "/usr/bin/python",
  args = { "-m", "debugpy.adapter" },
}

dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = "launch",
    name = "Launch file",

    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "${file}", -- This configuration will launch the current file if used.
    pythonPath = "/usr/bin/python",

    -- pythonPath = function()
    -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
    -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
    -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
    --   cwd = "/home/worldpotato/.virtualenvs/debugpy/bin/python"
    --   cwd = vim.fn.getcwd()
    --   if vim.fn.executable(cwd .. "/../venv/bin/python") == 1 then
    --     return cwd .. "/../venv/bin/python"
    --   elseif vim.fn.executable(cwd .. "/../.venv/bin/python") == 1 then
    --     return cwd .. "/../.venv/bin/python"
    --   else
    --     return "/home/worldpotato/.virtualenvs/debugpy/bin/python"
    --   end
    -- end,
  },
}

-- C/CPP/Rust
dap.adapters.rust = {
  type = "executable",
  command = "/usr/lib/codelldb/lldb/adapter/codelldb",
  request = "launch",
  -- command = "/usr/bin/lldb-vscode", -- adjust as needed
  name = "rust",
}

dap.adapters.lldb = {
  type = "executable",
  command = "/usr/lib/codelldb/lldb/adapter/codelldb",
  request = "launch",
  -- command = "/usr/bin/lldb-vscode", -- adjust as needed
  name = "lldb",
}

dap.configurations.cpp = {
  {
    name = "Default",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},

    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    runInTerminal = false,
  },
}
-- dap.configurations.rust = dap.configurations.cpp

require("dapui").setup({
  icons = { expanded = "⮛", collapsed = "⮚" },
  mappings = {
  -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
-- Use this to override mappings for specific elements
  element_mappings = {
    -- Example:
    -- stacks = {
    --   open = "<CR>",
    --   expand = "o",
    -- }
  },
  -- Expand lines larger than the window
  -- Requires >= 0.7
  expand_lines = vim.fn.has("nvim-0.7") == 1,
  -- Layouts define sections of the screen to place windows.
  -- The position can be "left", "right", "top" or "bottom".
  -- The size specifies the height/width depending on position. It can be an Int
  -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
  -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
  -- Elements are the elements shown in the layout (in order).
  -- Layouts are opened in order so that earlier layouts take priority in window sizing.
  layouts = {
    {
      elements = {
      },
      size = 40, -- 40 columns
      position = "left",
    },
    {
      elements = {
        { id = "stacks", size = 0.1 },
        { id = "scopes", size = 0.3 },
        { id = "console", size = 0.3 },
        { id = "repl", size = 0.3 },
      },
      size = 0.2, -- 25% of total lines
      position = "bottom",
    },
  },
  controls = {
    -- Requires Neovim nightly (or 0.8 when released)
    enabled = true,
    -- Display controls in this element
    element = "stacks",
    icons = {
      pause = "",
      play = "",
      step_into = "",
      step_over = "",
      step_out = "",
      step_back = "",
      run_last = "",
      terminate = "",
    },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
    max_value_lines = 100, -- Can be integer or nil.
  }
})

-- dap_virtual_text
require("nvim-dap-virtual-text").setup({
  enabled = true, -- enable this plugin (the default)
  enabled_commands = false, -- create commands DapVirtualTextEnable, DapVirtualTextDisable, DapVirtualTextToggle, (DapVirtualTextForceRefresh for refreshing when debug adapter did not notify its termination)
  highlight_changed_variables = true, -- highlight changed values with NvimDapVirtualTextChanged, else always NvimDapVirtualText
  highlight_new_as_changed = false, -- highlight new variables in the same way as changed variables (if highlight_changed_variables)
  show_stop_reason = true, -- show stop reason when stopped for exceptions
  commented = false, -- prefix virtual text with comment string
  -- experimental features:
  virt_text_pos = "eol", -- position of virtual text, see `:h nvim_buf_set_extmark()`
  all_frames = true, -- show virtual text for all stack frames not only current. Only works for debugpy on my machine.
  virt_lines = false, -- show virtual lines instead of virtual text (will flicker!)
  virt_text_win_col = nil, -- position the virtual text at a fixed window column (starting from the first text column) ,
  -- e.g. 80 to position at column 80, see `:h nvim_buf_set_extmark()`
})

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
