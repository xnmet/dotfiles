require('neoscroll').setup({})

require('neoscroll.config').set_mappings({
  ['2'] = {'scroll', { 'vim.wo.scroll', 'true', '300'}},
  ['3'] = {'scroll', {'-vim.wo.scroll', 'true', '300'}},
})
