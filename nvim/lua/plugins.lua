return require('packer').startup(function(use)
  -- Packer peut se gérer lui-même
  use 'wbthomason/packer.nvim'

  use 'navarasu/onedark.nvim'
  use 'tpope/vim-eunuch'

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require'lspconfig'.pyright.setup{}
    end
  }

  -- Autoclose
  use {
    'm4xshen/autoclose.nvim',
    config = function()
      require("autoclose").setup()
    end
  }


  -- Spectre (recherche/remplacement avancé)
  use {
    'nvim-pack/nvim-spectre',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require("spectre").setup()
    end
  }

  -- nvim-tree (explorateur de fichiers)
  use {
    'nvim-tree/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons', -- Icônes facultatives
    config = function()
      require("nvim-tree").setup()
      -- Ouvre automatiquement nvim-tree au démarrage
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          require("nvim-tree.api").tree.open()
        end
      })
    end
  }

  -- Bufferline (gestion des onglets)
  use {
    'akinsho/bufferline.nvim',
    requires = 'nvim-tree/nvim-web-devicons'
  }

  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim'
  }

  -- Hop (navigation rapide)
  use 'phaazon/hop.nvim'

  -- CoC (autocomplétion et intellisense)
  use {'neoclide/coc.nvim', branch = 'release'}
  -- Lua
    require('onedark').setup {
        style = 'cool'
    }
    require('onedark').load()

end)

