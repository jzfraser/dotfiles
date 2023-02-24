require('Comment').setup({
  toggler = {
    block = '<leader>bc',
    line = '<leader>/',
  },
  opleader = {
    block = '<leader>bc',
    line = '<leader>/',
  },
  ---LHS of extra mappings
  extra = {
    ---Add comment on the line above
    above = '<leader>ccO',
    ---Add comment on the line below
    below = '<leader>cco',
    ---Add comment at the end of line
    eol = '<leader>ccA',
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
        ---Extended mapping; `g>` `g<` `g>[count]{motion}` `g<[count]{motion}`
        extended = false,
    },
})
