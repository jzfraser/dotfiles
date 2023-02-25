local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  ensure_installed = { "help", "lua", "javascript", "typescript" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    disable = {},
  },
  autotag = {
    enable = true,
  },
})
