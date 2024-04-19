local nnoremap = require("momo.keymap").nnoremap

-- nvim-dap
nnoremap("<leader>dbt", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
nnoremap("<leader>dbc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
nnoremap("<leader>dl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
nnoremap("<leader>dr", "<cmd>lua require'dap'.clear_breakpoints()<cr>")
nnoremap("<leader>da", "<cmd>Telescope dap list_breakpoints<cr>")

nnoremap("<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
nnoremap("<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
nnoremap("<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
nnoremap("<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
nnoremap('<leader>dd', "<cmd>lua require'dap'.disconnect()<cr>")
nnoremap('<leader>dt', "<cmd>lua require'dap'.terminate()<cr>")
nnoremap("<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
nnoremap("<leader>dp", "<cmd>lua require'dap'.run_last()<cr>")
nnoremap('<leader>di', function() require"dap.ui.widgets".hover() end)
nnoremap('<leader>d?', function() local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes) end)
nnoremap('<leader>df', '<cmd>Telescope dap frames<cr>')
nnoremap('<leader>dh', '<cmd>Telescope dap commands<cr>')
