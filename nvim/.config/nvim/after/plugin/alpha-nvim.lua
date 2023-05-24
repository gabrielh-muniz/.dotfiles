local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')


dashboard.section.header.val = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
  "                                                     ",
  "       They don't get it. For me, it's neovim        ",
}

dashboard.section.buttons.val = {
  dashboard.button( "o", "󰙰  > Recent" , ":Telescope oldfiles<CR>"),
  dashboard.button( "f", "  > Find file", ":Telescope find_files<CR>"),
  dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = {
  "                                              ",
  "\"Computers are good. Programmers make them bad\"",
  "                                              ",
  "                                 gabrielhmuniz",
}

alpha.setup(dashboard.opts)
