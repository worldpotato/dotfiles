require("formatter").setup({
  filetype = {
    sh = {
      -- Shell Script Formatter
      function()
        return {
          exe = "shfmt",
          args = { "-i", 2 },
          stdin = true,
        }
      end,
    },
    cpp = {
      -- clang-format
      function()
        return {
          exe = "clang-format",
          args = { "--assume-filename", vim.api.nvim_buf_get_name(0), "--style=WebKit" },
          stdin = true,
          cwd = vim.fn.expand("%:p:h"), -- Run clang-format in cwd of the file.
        }
      end,
    },
    python = {
      function()
        return {
          exe = "black",
          args = {""},
          stdin = false,
        }
      end,
    },
    lua = {
      function()
        return {
          exe = "stylua",
          args = {
            "--config-path " .. "~/.config/stylua/stylua.toml",
            "-",
          },
          stdin = true,
        }
      end,
    },
  },
})
