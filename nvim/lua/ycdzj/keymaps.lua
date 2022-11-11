-- set leader key to <SPACE>
vim.g.mapleader = ";"

-- x to delete single character without yanking
vim.keymap.set("n", "x", '"_x')

-- q to quit
vim.keymap.set("n", "q", ":q<CR>")

-- e to open nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeOpen<CR>")

-- tmux
vim.g.tmux_navigator_no_mappings = 1
vim.keymap.set("n", "<C-Left>", ":<C-u>TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-Down>", ":<C-u>TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-Up>", ":<C-u>TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-Right>", ":<C-u>TmuxNavigateRight<CR>")

-- telescope
local ts_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", ts_builtin.find_files, {})
vim.keymap.set("n", "<leader>g", ts_builtin.live_grep, {})
vim.keymap.set("n", "<leader>b", ts_builtin.buffers, {})
vim.keymap.set("n", "<leader>h", ts_builtin.help_tags, {})
