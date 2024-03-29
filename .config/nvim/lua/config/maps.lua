vim.g.mapleader = ' '

-- nop
nvim_map('', 'Q',     '')
nvim_map('', 'V',     '')
nvim_map('', 'G',     '')
nvim_map('', 'gg',    '')
nvim_map('', '<c-d>', '')
nvim_map('', '<c-u>', '')
nvim_map('', '<c-f>', '')
nvim_map('', '<c-b>', '')
nvim_map('', '0',     '')

-- navigation
nvim_map('nx', '<a-j>', "<cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 300)<cr>")
nvim_map('nx', '<a-k>', "<cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 300)<cr>")
nvim_map('nx', '<a-h>', 'gg', { noremap = true })
nvim_map('nx', '<a-l>', 'G',  { noremap = true })
---- jumplist
nvim_map('n', '<a-w>', 'g;')
nvim_map('n', '<a-e>', 'g,')
nvim_map('n', '<a-s>', '<c-o>')
nvim_map('n', '<a-d>', '<c-i>', { noremap = true })
---- line
nvim_map('nx', '<a-i>', '^^')
nvim_map('nx', '<a-o>', '$')
---- window
nvim_map('n', '<tab>', '<c-w>w')
nvim_map('n', '<s-tab>', '<c-w>W')
nvim_map('n', '<cr>', '<cmd>buffer #<cr>', { silent = true })

-- text movement
nvim_map('n', '<c-j>', '<cmd>move +1<cr>',   { silent = true })
nvim_map('n', '<c-k>', '<cmd>move -2<cr>',   { silent = true })
nvim_map('n', '<c-h>', '<<',                 { silent = true })
nvim_map('n', '<c-l>', '>>',                 { silent = true })
nvim_map('x', '<c-j>', [[:move '>+1<cr>gv]], { silent = true })
nvim_map('x', '<c-k>', [[:move '<-2<cr>gv]], { silent = true })
nvim_map('x', '<c-h>', '<gv',                { silent = true })
nvim_map('x', '<c-l>', '>gv',                { silent = true })

-- undo/redo
nvim_map('n', 'u',     '<cmd>silent undo<cr>', { silent = true })
nvim_map('n', '<c-u>', '<cmd>silent redo<cr>', { silent = true })

-- misc
nvim_map('n', '<c-q>', '<cmd>q<cr>')
nvim_map('n', '<c-r>', 'gr', { noremap = true, silent = true })
nvim_map('n', 'Y', 'y$', { noremap = true })
nvim_map('n', '<leader>r', ':so $MYVIMRC<cr>', { noremap = true })
