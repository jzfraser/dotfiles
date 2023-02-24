require('lualine').setup({
  options = {
    disabled_filetypes = {
    }
  },
  sections = {
    lualine_c = {{'filename', path = 1}},
  },
  extensions = {
    'nvim-tree',
    'fugitive'
  },
})
