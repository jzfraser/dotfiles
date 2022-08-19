local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
  },
  on_attach = function (client)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd('BufWritePre', {
        callback = function() vim.lsp.buf.formatting_seq_sync() end
      })
    end
  end,
})
