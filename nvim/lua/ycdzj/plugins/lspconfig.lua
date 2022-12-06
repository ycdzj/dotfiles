local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.clangd.setup({
  capabilities = capabilities,
})
lspconfig.gopls.setup({
  capabilities = capabilities,
})
