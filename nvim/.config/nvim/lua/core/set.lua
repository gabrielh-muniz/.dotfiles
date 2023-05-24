vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.fillchars = { eob = ' ' }

vim.cmd('autocmd FileType python setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab')
