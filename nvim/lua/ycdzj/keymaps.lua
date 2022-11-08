-- set leader key to <SPACE>
vim.g.mapleader = " "

-- use <C-c> as <ESC>
vim.keymap.set("", "<C-c>", "<ESC>")

-- clear search highlights
vim.keymap.set("n", "<leader>ch", ":nohl<CR>")

-- delete single character without yanking
vim.keymap.set("n", "x", '"_x')

-- windows
vim.keymap.set("n", "<leader>v", "<C-w>v")
vim.keymap.set("n", "<leader>s", "<C-w>s")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>=", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tq", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- previouse tab

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeOpen<CR>")
