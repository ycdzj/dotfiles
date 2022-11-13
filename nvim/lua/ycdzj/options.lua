-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs & indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- line wrapping
vim.opt.wrap = false

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- cursor line
vim.opt.cursorline = true

-- appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- backspace
vim.opt.backspace = { "indent", "eol", "start" }

-- line width
vim.o.textwidth = 80

-- formatting
vim.opt.formatoptions:append("mM")

-- mouse
vim.opt.mouse:append("a")

-- tmux navigator
vim.g.tmux_navigator_no_wrap = 1
