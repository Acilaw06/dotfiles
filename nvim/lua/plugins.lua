-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
require("autoclose").setup()
require("spectre").setup()
require'lspconfig'.pyright.setup{}
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'navarasu/onedark.nvim'

  use 'tpope/vim-eunuch'

  use 'neovim/nvim-lspconfig'

  use 'm4xshen/autoclose.nvim'

  use 'nvim-pack/nvim-spectre'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use {'neoclide/coc.nvim', branch = 'release'}
end)
