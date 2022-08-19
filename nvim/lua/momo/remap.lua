local Remap = require('momo.keymap')
local nnoremap = Remap.nnoremap

-- make room for and set leader
nnoremap('<Space>o', '<Nop>')
vim.g.mapleader = ' '

-- open directory viewer (tree)
nnoremap('<leader>op', ':NvimTreeToggle<CR>')

-- buffer movement
nnoremap('<leader>bn', '<cmd>bn<CR>')
nnoremap('<leader>bp', '<cmd>bp<CR>')
nnoremap('<leader>bd', '<cmd>bd<CR>')

-- split movement
nnoremap('<leader>wh', '<C-w>h')
nnoremap('<leader>wj', '<C-w>j')
nnoremap('<leader>wk', '<C-w>k')
nnoremap('<leader>wl', '<C-w>l')

-- split managment
nnoremap('<leader>ws', '<C-w>s')
nnoremap('<leader>wv', '<C-w>v')
nnoremap('<leader>wc', '<C-w>c')

-- quick close all
nnoremap('<leader>E', '<cmd>qa!<CR>')
