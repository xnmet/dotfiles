local lsp_installer = require('nvim-lsp-installer')

local M = {}

local toggle_lsp = 'show_lsp_diagnostic'

local toggle_lsp_diagnostic = function(namespace, bufnr)
  return vim.b[bufnr][toggle_lsp] == true
end

vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false,
    virtual_text = toggle_lsp_diagnostic,
    signs = toggle_lsp_diagnostic,
  }
)

lsp_installer.on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)

function M.show_diagnostic()
  local toggle = vim.b.show_lsp_diagnostic or false
  if toggle == false then
    vim.api.nvim_buf_set_var(0, toggle_lsp, true)
    vim.o.signcolumn = 'yes'
    print('lsp diagnostic ON')
  else
    vim.api.nvim_buf_set_var(0, toggle_lsp, false)
    vim.o.signcolumn = 'no'
    print('lsp diagnostic OFF')
  end
end

nvim_map('n', '<leader>l', "<cmd>lua require'plugged.lsp'.show_diagnostic()<cr>")

return M
