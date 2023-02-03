require("nvim-treesitter.configs").setup({
  ensure_installed = {"rust"},
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      -- ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
  --indent = {
  --enable = true
  --}
  playground = {
    enable = false,
  },
  -- refactor = {
  --   highlight_definitions = { enable = true },
  --   highlight_current_scope = { enable = false },
  --   smart_rename = {
  --     enable = true,
  --   },
    -- navigation = {
    --   enable = false,
    -- },
    -- rainbow = {
    --   enable = false,
    --   extended_mode = false,
    --   max_file_lines = nil,
    -- },
  -- },
})

