local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true }
  vim.keymap.set("n", "ge", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "gl", vim.diagnostic.setloclist, opts)

  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
  vim.keymap.set("n", "gn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "ga", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "gf", vim.lsp.buf.format, bufopts)
end

local lspconfig = require("lspconfig")
lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
