-- set leader key to <SPACE>
vim.g.mapleader = " "

-- x to delete single character without yanking
vim.keymap.set("n", "x", '"_x')

-- q to quit
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- e to open nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeOpen<CR>")

-- tmux
vim.g.tmux_navigator_no_mappings = 1
vim.keymap.set("n", "<C-Left>", ":<C-u>TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-Down>", ":<C-u>TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-Up>", ":<C-u>TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-Right>", ":<C-u>TmuxNavigateRight<CR>")

