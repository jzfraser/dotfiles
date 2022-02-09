return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager

  use 'shaunsingh/nord.nvim'
  use 'rmehri01/onenord.nvim'
  use 'ellisonleao/gruvbox.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'neovim/nvim-lspconfig' -- Configs for LSP Client
  use 'williamboman/nvim-lsp-installer'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons', },
    config = function() require'nvim-tree'.setup {
      hijack_netrw = true,
      auto_close = true
    } end
  }

  use {
    'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

end)
