require("mason-lspconfig").setup {
    ensure_installed = { "rust_analyzer", "sumneko_lua" },
    automatic_installation = true,
}

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig').sumneko_lua.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

require('lspconfig').taplo.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

require('lspconfig').bashls.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

