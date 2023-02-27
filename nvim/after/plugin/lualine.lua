local function get_lsp()
  local msg = "No Active Lsp"
  local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
  local clients = vim.lsp.get_active_clients()
  if next(clients) == nil then
    return msg
  end
  for _, client in ipairs(clients) do
    local filetypes = client.config.filetypes
    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      return client.name
    end
  end
  return msg
end

require("lualine").setup({
  options = {
    disabled_filetypes = {
    }
  },
  sections = {
    lualine_c = {{ "filename",  path = 1 }},
    lualine_x = { get_lsp, 'fileformat', 'filetype' },
  },
  extensions = {
    "nvim-tree",
    "fugitive"
  },
})
