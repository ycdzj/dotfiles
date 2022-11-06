-- vim.o.formatoptions = vim.o.formatoptions .. 'mM'
vim.opt.formatoptions:append('mM')
vim.o.textwidth = 80
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    icons = {
      show = {
        file = false,
        folder = false,
	folder_arrow = false,
      },
    },
    indent_markers = {
      enable = true,
    },
  },
  filters = {
    dotfiles = true,
  },
})
