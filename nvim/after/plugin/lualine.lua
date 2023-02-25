require("lualine").setup({
  options = {
    disabled_filetypes = {
    }
  },
  sections = {
    lualine_c = {{ "filename",  path = 1 }},
    lualine_x = { 'encoding', 'filetype' },
  },
  extensions = {
    "nvim-tree",
    "fugitive"
  },
})
