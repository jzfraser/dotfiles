require('mason').setup()
require('mason-lspconfig').setup()

local Remap = require('momo.keymap')
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local lspconfig = require('lspconfig')
local function config(_config)
  return vim.tbl_deep_extend("force", {
    capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function()
      nnoremap("gd", function() vim.lsp.buf.definition() end)
      nnoremap("gr", function() vim.lsp.buf.references() end)
      nnoremap("K", function() vim.lsp.buf.hover() end)
      nnoremap("[d", function() vim.diagnostic.goto_next() end)
      nnoremap("]d", function() vim.diagnostic.goto_prev() end)
      nnoremap("<leader>ld", function() vim.diagnostic.open_float() end)
      nnoremap("<leader>la", function() vim.lsp.buf.code_action() end)
      nnoremap("<leader>lt", function() vim.lsp.buf.type_definition() end)
      nnoremap("<leader>lr", function() vim.lsp.buf.rename() end)
      inoremap("<C-h>", function() vim.lsp.buf.signature_help() end)
    end,
  }, _config or {})
end

lspconfig.lua_ls.setup(config({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}))
lspconfig.tsserver.setup(config({
  filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx' },
  cmd = { 'typescript-language-server', '--stdio' }
}))
lspconfig.rust_analyzer.setup(config({
  diagnostics = {
    enable = true
  }
}))
lspconfig.clangd.setup(config())
lspconfig.yamlls.setup(config())
lspconfig.pyright.setup(config())
lspconfig.tailwindcss.setup(config())
lspconfig.terraformls.setup(config())
lspconfig.eslint.setup(config())
