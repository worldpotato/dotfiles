local dap = require("dap")

vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='001', numhl=''})
vim.fn.sign_define('DapPosition', {text='→', texthl='', linehl='001', numhl=''})

-- PYTHON
dap.adapters.python = {
  type = "executable",
  command = "/usr/bin/python",
  args = { "-m", "debugpy.adapter"},
}


dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = "launch",
    name = "Launch file",
    args = {"-c", "ctc.yaml", "-t", "dark"},

    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "${file}", -- This configuration will launch the current file if used.
    pythonPath = function()
      -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
      -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
      -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
        return cwd .. "/venv/bin/python"
      elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
        return cwd .. "/.venv/bin/python"
      else
        return "/usr/bin/python"
      end
    end,
  },
}

-- C/CPP/Rust
dap.adapters.lldb = {
  type = "executable",
  command = "/usr/bin/lldb-vscode", -- adjust as needed
  name = "lldb",
}
dap.configurations.cpp = {
  {
    name = "Launch",
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

require("dapui").setup({
  layouts = {
    {
      elements = {
        'scopes',
        'breakpoints',
        'stacks',
        'watches',
      },
      size = 40,
      position = 'left',
    },
    {
      elements = {
        'repl',
        'console',
      },
      size = 10,
      position = 'bottom',
    },
  },
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
})

-- dap_virtual_text
vim.g.dap_virtual_text = 'all frames'

-- keymaps
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<leader>gb", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
vim.api.nvim_set_keymap(
  "n",
  "<leader>gB",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  opts
)
vim.api.nvim_set_keymap("n", "<F4>", "<cmd>lua require('dapui').open()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>gl", "<cmd>lua require'dap'.run_last()<CR>", opts)
vim.api.nvim_set_keymap("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", opts)
vim.api.nvim_set_keymap("n", "<F6>", "<cmd>lua require'dap'.step_over()<CR>", opts)
vim.api.nvim_set_keymap("n", "<F7>", "<cmd>lua require'dap'.step_into()<CR>", opts)
vim.api.nvim_set_keymap("n", "<F8>", "<cmd>lua require'dap'.step_out()<CR>", opts)
vim.api.nvim_set_keymap("n", "<F9>", "<cmd>lua require('dapui').close()<CR>", opts)
