vim.g.wordmotion_nomap = 1
vim.g.wordmotion_spaces = { '\\w\\@<=-\\w\\@=', '\\.', '_' }

nvim_map('',   'w',  '<Plug>WordMotion_w')
nvim_map('',   'b',  '<Plug>WordMotion_b')
nvim_map('',   't',  '<Plug>WordMotion_e')
nvim_map('xo', 'aw', '<Plug>WordMotion_aw')
nvim_map('xo', 'iw', '<Plug>WordMotion_iw')
