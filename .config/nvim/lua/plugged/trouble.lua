require('trouble').setup({
  icons = false,
})

nvim_map('n', '<leader>k', '<cmd>TroubleToggle<cr>')
