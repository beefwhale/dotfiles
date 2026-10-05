-- ensure auto indentation works
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.cmd("filetype plugin indent on")

-- ensuring cliboard is the same and P and p here
vim.opt.clipboard = "unnamedplus"
