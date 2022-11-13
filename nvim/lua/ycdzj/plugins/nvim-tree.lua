-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  actions = {
    open_file = {
      window_picker = {
        enable = false, -- for better working with window splits
      },
    },
  },

  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" }, -- press u to go to upper directory
      },
    },
  },

  renderer = {
    highlight_git = true,
    indent_markers = {
      enable = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "├",
        bottom = "─",
        none = " ",
      },
    },
    icons = {
      show = {
        -- file = false,
        -- folder = false,
        folder_arrow = false,
        git = false,
      },
    },
  },
})
