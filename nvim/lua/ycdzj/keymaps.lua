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

-- x to delete single character without yanking
vim.keymap.set("n", "x", '"_x')

-- tmux
vim.g.tmux_navigator_no_wrap = 1
