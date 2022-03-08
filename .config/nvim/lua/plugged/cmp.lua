local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<tab>'] = cmp.mapping.select_next_item(),
    ['<s-tab>'] = cmp.mapping.select_prev_item(),
    ['<c-j>'] = cmp.mapping.scroll_docs(-4),
    ['<c-k>'] = cmp.mapping.scroll_docs(4),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }
})

cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})
