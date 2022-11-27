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
-- clear search
vim.keymap.set("n", "<leader>h", "<cmd>nohls<cr>", opt)

-- g key
if vim.version().minor >= 8 then
  vim.keymap.set("n", "gf", vim.lsp.buf.format)
else
  vim.keymap.set("n", "gf", vim.lsp.buf.formatting_sync)
end
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<cr>", opt)
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<cr>", opt)
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<cr>", opt)

-- gc key
vim.keymap.set({ "n", "v" }, "gca", "<cmd>Lspsaga code_action<cr>", opt)
vim.keymap.set("n", "gcd", "<cmd>Lspsaga show_line_diagnostics<cr>", opt)

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
-- disable `q`
vim.keymap.set("n", "q", "<nop>", opt)
-- disable <C-c>
vim.keymap.set({"n", "i", "v"}, "<C-c>", "<nop>", opt)
