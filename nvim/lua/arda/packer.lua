vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  requires = { {'nvim-lua/plenary.nvim'} }
  } 

  use({
    "craftzdog/solarized-osaka.nvim",
    config = function()
      vim.cmd("colorscheme solarized-osaka")
    end
  })

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'

  use({
	  "L3MON4D3/LuaSnip",
	  tag = "v2.*",
	  run = "make install_jsregexp"
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use 'vim-test/vim-test'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'

  use 'theprimeagen/harpoon'

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
end)
