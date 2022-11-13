local opt = { noremap = true, silent = true }
local ts_builtin = require("telescope.builtin")

-- leader key
vim.g.mapleader = " "
-- quit & save
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", opt)
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", opt)
-- nvim-tree & telescope
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opt)
vim.keymap.set("n", "<leader>f", ts_builtin.find_files)
vim.keymap.set("n", "<leader>g", ts_builtin.live_grep)
vim.keymap.set("n", "<leader>b", ts_builtin.buffers)
-- split
vim.keymap.set("n", "<leader>v", "<cmd>vsplit<cr>", opt)
vim.keymap.set("n", "<leader>s", "<cmd>split<cr>", opt)
-- outline
vim.keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<cr>", opt)

-- g key
vim.keymap.set("n", "gf", vim.lsp.buf.format)
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<cr>", opt)
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<cr>", opt)
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<cr>", opt)

-- gc key
vim.keymap.set({ "n", "v" }, "gca", "<cmd>Lspsaga code_action<cr>", opt)
vim.keymap.set("n", "gcd", "<cmd>Lspsaga show_line_diagnostics<cr>", opt)
vim.keymap.set("n", "gcd", "<cmd>Lspsaga show_cursor_diagnostics<cr>", opt)

-- `[` and `]` key
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opt)
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<cr>", opt)
-- Only jump to error
vim.keymap.set("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opt)
vim.keymap.set("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opt)

-- other keys
-- hover doc
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>", opt)
-- x to delete single character without yanking
vim.keymap.set("n", "x", '"_x', opt)
