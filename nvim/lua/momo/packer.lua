-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')
  use('nvim-lua/plenary.nvim')
  use('kyazdani42/nvim-web-devicons')

  use('ellisonleao/gruvbox.nvim')

  use('neovim/nvim-lspconfig')
  use('onsails/lspkind-nvim')
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('hrsh7th/nvim-cmp') -- Completion
  use('hrsh7th/cmp-buffer') -- nvim-cmp source for buffer words
  use('hrsh7th/cmp-nvim-lsp') -- nvim-cmp source for neovim's built-in LSP
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-nvim-lsp-signature-help')
  use('saadparwaiz1/cmp_luasnip')
  use('L3MON4D3/LuaSnip')

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use('nvim-telescope/telescope.nvim')
  use('akinsho/nvim-bufferline.lua')
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() require'nvim-tree'.setup {
      hijack_netrw = true,
    } end
  }
end)
