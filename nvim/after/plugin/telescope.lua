local nnoremap = require('momo.keymap').nnoremap
local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    initial_mode = "insert",
  },
  pickers = {
    find_files = {
      find_command = {
        'rg',
        '--files',
        '--hidden',
        '-g',
        '!.git'
      }
    },
    buffers = {
      initial_mode = "normal",
    }
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      hijack_netrw = true,
      grouped = true,
      initial_mode = "normal",
      layout_config = { height = 80 }
    },
  },
})

-- Disable folding in Telescope's result window.
vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })

telescope.load_extension('file_browser')

-- find -> files
nnoremap('<leader>ff', builtin.find_files, {})
-- find -> project
nnoremap('<leader>fp', ':Telescope file_browser<CR>', {})
-- find -> text
nnoremap('<leader>ft', builtin.live_grep, {})
-- find -> buffers
nnoremap('<leader>fb', builtin.buffers, {})
-- find -> git files
nnoremap('<leader>fg', builtin.git_files, {})

