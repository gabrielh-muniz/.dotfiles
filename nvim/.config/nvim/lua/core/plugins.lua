-- Automatically install packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Floating window
require('packer').init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end
  },
  profile = {
    enable = true,
  }
}

return require('packer').startup(function(use)
  -- Packer plugin manager
  use 'wbthomason/packer.nvim'
  
  -- Nvim-tree with nvim-devicons
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- Lualine
  use 'nvim-lualine/lualine.nvim'

  -- Gruvbox Onedark Catppuccin
  -- use { "ellisonleao/gruvbox.nvim" }
  -- use 'navarasu/onedark.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Alpha
  use {'goolord/alpha-nvim'}

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
  }

  -- Autopairs
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  if packer_bootstrap then
    require('packer').sync()
  end
end)
