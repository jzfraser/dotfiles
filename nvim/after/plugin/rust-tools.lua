local Remap = require('momo.keymap')
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local rt = require("rust-tools")

rt.setup({
  server = {
      on_attach = function(client, bufnr)
        client.server_capabilities.semanticTokensProvider = nil
        nnoremap("gd", function() vim.lsp.buf.definition() end)
        nnoremap("gr", function() vim.lsp.buf.references() end)
        nnoremap("K", function() vim.lsp.buf.hover() end)
        nnoremap("K", function() rt.hover_actions.hover_actions() end, { buffer = bufnr })
        nnoremap("[d", function() vim.diagnostic.goto_next() end)
        nnoremap("]d", function() vim.diagnostic.goto_prev() end)
        nnoremap("<leader>ld", function() vim.diagnostic.open_float() end)
        nnoremap("<leader>la", function() rt.code_action_group.code_action_group() end, { buffer = bufnr })
        nnoremap("<leader>lt", function() vim.lsp.buf.type_definition() end)
        nnoremap("<leader>lr", function() vim.lsp.buf.rename() end)
        inoremap("<C-h>", function() vim.lsp.buf.signature_help() end)
      end,
    },
})
