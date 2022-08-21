vim.opt.number = true

vim.opt.errorbells = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.cmd(':set splitright')
vim.cmd(':set completeopt=menu,menuone')
vim.cmd(':set bs=2')
vim.cmd(':set mouse=a')

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.colorcolumn = '80'
vim.highlight.create('ColorColumn', {ctermbg=0, guibg='black'}, false)

vim.opt.updatetime = 50
