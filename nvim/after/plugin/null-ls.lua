local null_ls = require('null-ls')

local my_sources = {
  null_ls.builtins.formatting.prettierd,
  null_ls.builtins.formatting.black,
  null_ls.builtins.formatting.rustfmt,
  null_ls.builtins.formatting.eslint_d,
  null_ls.builtins.formatting.clang_format
}
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = my_sources,
  on_attach = function (client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})
