-- ensure auto indentation works
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.cmd("filetype plugin indent on")

vim.opt.scrolloff = 8

-- ensuring cliboard is the same and P and p here
vim.opt.clipboard = "unnamedplus"

-- ensure suggestions do not autocomplete the first opt
vim.opt.completeopt = {"menuone", "noselect", "popup"}

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true



