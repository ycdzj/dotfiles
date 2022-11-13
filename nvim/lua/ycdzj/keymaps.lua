-- set leader key to <SPACE>
vim.g.mapleader = " "

-- quit & save
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- nvim-tree & telescope
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
local ts_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", ts_builtin.find_files, {})
vim.keymap.set("n", "<leader>g", ts_builtin.live_grep, {})
vim.keymap.set("n", "<leader>b", ts_builtin.buffers, {})

-- split
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")
vim.keymap.set("n", "<leader>s", ":split<CR>")

-- lsp
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "gl", "<cmd>Trouble document_diagnostics<cr>", opts)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
vim.keymap.set("n", "gr", "<cmd>Trouble lsp_references<cr>", opts)
vim.keymap.set("n", "gn", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "ga", "<cmd>Trouble quickfix<cr>", opts)
vim.keymap.set("n", "gf", vim.lsp.buf.format, opts)

-- x to delete single character without yanking
vim.keymap.set("n", "x", '"_x')

-- tmux
vim.g.tmux_navigator_no_wrap = 1
