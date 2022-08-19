local nnoremap = require('momo.keymap').nnoremap
local bufferline = require('bufferline')

bufferline.setup({})

nnoremap('<Tab>', '<cmd>BufferLineCycleNext<CR>')
nnoremap('<S-Tab>', '<cmd>BufferLineCyclePrev<CR>')
