local Remap = require("momo.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap

vim.g.mapleader = " " -- set leader to <Space>

nnoremap("<Space>o", "<Nop>") -- make room for and set leader

nnoremap("<leader>h", ":nohl<CR>") -- disable highlighting

nnoremap("<leader>op", ":NvimTreeToggle<CR>") -- open project viewer (tree)

nnoremap("<leader>E", "<cmd>qa!<CR>") -- quick close nvim without saving

-- buffer movement
nnoremap("<leader>bn", "<cmd>bn<CR>") -- next
nnoremap("<leader>bb", "<cmd>bp<CR>") -- previous (back)
nnoremap("<leader>bd", "<cmd>bd<CR>") -- delete

-- delete to void register
nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

-- editor movement
vnoremap("J", ":m '>+1<CR>gv=gv") -- in visual, move block down, indent when needed
vnoremap("K", ":m '<-2<CR>gv=gv") -- in visual, move block up, indent when needed
nnoremap("<C-d>", "<C-d>zz") -- half page down, keep cursor in center of buffer
nnoremap("<C-u>", "<C-u>zz") -- half page up, keep cursor in center of buffer
nnoremap("n", "nzzzv") -- next search term, keep cursor in center of buffer
nnoremap("N", "Nzzzv") -- previous search term, keep cursor in center of buffer
