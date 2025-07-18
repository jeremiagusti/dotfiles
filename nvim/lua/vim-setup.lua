local opt = vim.opt

-- Tab and space settings
opt.tabstop = 4          -- Number of spaces a tab counts for
opt.shiftwidth = 4       -- Number of spaces for each indentation level
opt.expandtab = true     -- Convert tabs to spaces
opt.softtabstop = 4      -- Number of spaces for tab in insert mode

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Set color scheme
vim.cmd("colorscheme catppuccin")
