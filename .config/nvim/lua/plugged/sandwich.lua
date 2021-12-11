vim.cmd('runtime macros/sandwich/keymap/surround.vim')

map('xo', 'is', '<Plug>(textobj-sandwich-auto-i)')
map('xo', 'as', '<Plug>(textobj-sandwich-auto-i)')
map('xo', 'iq', '<Plug>(textobj-sandwich-query-i)')
map('xo', 'aq', '<Plug>(textobj-sandwich-query-a)')
