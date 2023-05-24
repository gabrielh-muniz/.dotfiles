local opts = { noremap = true, silent = true }

vim.g.mapleader = "f"
vim.g.maplocalleader = "f"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "jk", "<ESC>", opts)

