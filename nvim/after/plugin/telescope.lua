local telescope = require('telescope')
require('telescope')

telescope.setup({
  extensions = {
    file_browser = {
      theme = 'ivy',
      hijack_netrw = true,
      grouped = true,
      initial_mode = 'normal',
      layout_config = { height = 80 }
    },
  }
})

telescope.load_extension('file_browser')
