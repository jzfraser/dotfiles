-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  -- general utils
  use('nvim-lua/plenary.nvim')
  use('mfussenegger/nvim-dap')
  use('kyazdani42/nvim-web-devicons')

  -- themes
  use('eddyekofo94/gruvbox-flat.nvim')
  use('rmehri01/onenord.nvim')
  use('EdenEast/nightfox.nvim')
  use({
    'catppuccin/nvim',
    as = 'catppuccin'
  })

  use('neovim/nvim-lspconfig') -- configure nvim LSP
  use('onsails/lspkind-nvim') -- nice icons for LSPs
  use('williamboman/mason.nvim') -- LSP manager
  use('williamboman/mason-lspconfig.nvim') -- LSP manager helper
  use('jose-elias-alvarez/null-ls.nvim') -- LSP extra stuff
  use('MunifTanjim/prettier.nvim') -- Prettier formatting
  use('simrat39/rust-tools.nvim') -- rust with batteries included

  use('hrsh7th/nvim-cmp') -- Completion
  use('hrsh7th/cmp-buffer') -- nvim-cmp source for buffer words
  use('hrsh7th/cmp-path') -- nvim-cmp source for path inclusion
  use('hrsh7th/cmp-cmdline') -- nvim-cmp source for cmdline words
  use('hrsh7th/cmp-nvim-lua') -- nvim-cmp source for nvim lua
  use('hrsh7th/cmp-nvim-lsp') -- nvim-cmp source for neovim's built-in LSP
  use('hrsh7th/cmp-nvim-lsp-signature-help') -- nvim-cmp source for signatures
  use('saadparwaiz1/cmp_luasnip') -- snippet completion
  use('L3MON4D3/LuaSnip') -- snippets needed for nvim-cmp

  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }) -- parser

  use('windwp/nvim-autopairs') -- auto parens, quotes, and more
  use('windwp/nvim-ts-autotag') -- auto html/jsx tags
  use('numToStr/Comment.nvim') -- quick commenting

  use('lewis6991/gitsigns.nvim') -- what's changed visable in sidebar
  use('tpope/vim-fugitive') -- git but it's vim... or vim but it's git?

  use('nvim-lualine/lualine.nvim') -- activity bar
  use('akinsho/bufferline.nvim') -- tabs
  use('mbbill/undotree')

  use('folke/which-key.nvim')

  use('nvim-telescope/telescope.nvim') -- fuzzy files and more
  use('nvim-telescope/telescope-file-browser.nvim')
  use({
    -- file tree
    'kyazdani42/nvim-tree.lua',
    config = function()
      require 'nvim-tree'.setup({
        hijack_netrw = false,
      })
    end
  })
end)
