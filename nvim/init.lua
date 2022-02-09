-- set up plugin compilation on add, format file on save, colorscheme, and pull in .vimrc settings
vim.cmd([[
set runtimepath^=~/.vim runtimepath+=/.vim/after
let &packpath = &runtimepath

augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua PackerCompile
augroup end

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.html :EslintFixAll                                                                                                                                                               
set completeopt=menu,menuone,noselect

set termguicolors
set background=dark
colorscheme gruvbox

source ~/.vimrc
]], true)

-- setting up plugins from lua/plugins.lua
require('plugins')
require('bufferline').setup{}

-- keybinds for NvimTree and Telescope
local map = vim.api.nvim_set_keymap
local options = { noremap = true }
map('', '<leader>t', ':NvimTreeToggle<CR>', {})
map('', '<leader>ff', '<cmd>Telescope find_files<CR>', options)
map('', '<leader>fg', '<cmd>Telescope live_grep<CR>', options)
map('', '<leader>fb', '<cmd>Telescope buffers<CR>', options)
map('', '<leader>fh', '<cmd>Telescope help_tags<CR>', options)

-- lsp setup
local lsp_installer = require'nvim-lsp-installer'
-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
  local opts = {}
  if server.name == "sumneko_lua" then
    opts = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim', 'use' }
          },
        }
      }
    }
  end
  server:setup(opts)
end)

-- setup for nvim-cmp (autocomplete)
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
    vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- ['<C-y>'] = cmp.config.disable, -- disable this if I don't like default <C-y> mapping
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
  },
  sources = cmp.config.sources({
    { name = 'nvim-lsp' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  })
})
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})
cmp.setup.cmdline(':', {
  sources = {
    { name = 'path' },
  }, {
    { name = 'cmdline' }
  }
})

-- configure different language servers
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig')['cssls'].setup {
  capabilities = capabilities
}
require('lspconfig')['tsserver'].setup {
  capabilities = capabilities
}
require('lspconfig')['eslint'].setup {
  capabilities = capabilities
}
require('lspconfig')['html'].setup {
  capabilities = capabilities
}
require('lspconfig')['pyright'].setup {
  capabilities = capabilities
}
require('lspconfig')['sumneko_lua'].setup {
  capabilities = capabilities
}

