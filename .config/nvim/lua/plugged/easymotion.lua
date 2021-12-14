vim.g.EasyMotion_do_mapping = 0
vim.g.EasyMotion_smartcase = 1
vim.g.EasyMotion_space_jump_first = 1

nvim_map('n', 'r', '<Plug>(easymotion-overwin-f)')
nvim_map('',  's', '<Plug>(easymotion-jumptoanywhere)')
nvim_map('',  'f', '<Plug>(easymotion-bd-jk)')
nvim_map('',  'e', '<Plug>(easymotion-lineanywhere)')
