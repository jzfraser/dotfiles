local Remap = require('momo.keymap')
local nnoremap = Remap.nnoremap

-- make room for and set leader
nnoremap('<Space>o', '<Nop>')
vim.g.mapleader = ' '

-- disable highlighting
nnoremap('<leader>h', ':nohl<CR>')

-- open project viewer (tree)
nnoremap('<leader>op', ':NvimTreeToggle<CR>')

-- buffer movement
nnoremap('<leader>bn', '<cmd>bn<CR>')
nnoremap('<leader>bb', '<cmd>bp<CR>')
nnoremap('<leader>bd', '<cmd>bd<CR>')

-- quick close all
nnoremap('<leader>E', '<cmd>qa!<CR>')
