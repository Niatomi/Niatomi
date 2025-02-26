-- https://github.com/wbthomason/packer.nvim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim", as = "catppuccin" }
  use('folke/tokyonight.nvim')
  use('nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"})
  use('mbbill/undotree')

  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})

  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
  }
  use({"stevearc/oil.nvim"})

  use {
	'echasnovski/mini.nvim',
	{'echasnovski/mini.nvim', { branch = 'stable' }}
  }

end)
