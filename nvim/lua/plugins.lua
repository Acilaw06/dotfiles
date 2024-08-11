-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
require("autoclose").setup()
require("spectre").setup()
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'navarasu/onedark.nvim'

  use 'tpope/vim-eunuch'

  use {'neoclide/coc.nvim', branch = 'release'}

  use 'm4xshen/autoclose.nvim'

  use 'nvim-pack/nvim-spectre'
  use 'nvim-lua/plenary.nvim'
end)
