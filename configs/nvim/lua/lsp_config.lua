require("lspconfig").bashls.setup(coq.lsp_ensure_capabilities({}))
require("lspconfig").cmake.setup(coq.lsp_ensure_capabilities({}))
require("lspconfig").pylsp.setup(coq.lsp_ensure_capabilities({}))
require("lspconfig").rust_analyzer.setup(coq.lsp_ensure_capabilities({}))
require("lspconfig").ccls.setup(coq.lsp_ensure_capabilities({
  filetypes = { "c", "cpp", "objc", "objcpp"},
  settings = {
    showInactiveRegions = false,
  },
}))

require("lspconfig").texlab.setup(coq.lsp_ensure_capabilities({
  settings = {
    latex = {
      build = {
        args = { "" },
        executable = "tectonic",
        onSave = false,
      },
      forwardSearch = {
        args = {},
        onSave = false,
      },
      lint = {
        onChange = true,
      },
    },
  },
}))

