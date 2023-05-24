vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
  modified = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },
  actions = { 
    open_file = {
      quit_on_open = true,
    },
  },
  renderer = {
    icons = {
      glyphs = {
        git = {
          unstaged = "•",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
