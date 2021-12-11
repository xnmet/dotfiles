vim.g.wordmotion_nomap = 1
vim.g.wordmotion_spaces = { '\\w\\@<=-\\w\\@=', '\\.', '_' }

map('',   'w',  '<Plug>WordMotion_w')
map('',   'b',  '<Plug>WordMotion_b')
map('',   't',  '<Plug>WordMotion_e')
map('xo', 'aw', '<Plug>WordMotion_aw')
map('xo', 'iw', '<Plug>WordMotion_iw')
