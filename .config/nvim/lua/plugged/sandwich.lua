vim.cmd('runtime macros/sandwich/keymap/surround.vim')

nvim_map('xo', 'is', '<Plug>(textobj-sandwich-auto-i)')
nvim_map('xo', 'as', '<Plug>(textobj-sandwich-auto-i)')
nvim_map('xo', 'iq', '<Plug>(textobj-sandwich-query-i)')
nvim_map('xo', 'aq', '<Plug>(textobj-sandwich-query-a)')
