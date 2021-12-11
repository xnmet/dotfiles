map = function(...)
  local modes, lhs, rhs, opts = ...
  opts = opts or {}
  if string.len(modes) < 2 then
    vim.api.nvim_set_keymap(modes, lhs, rhs, opts)
  else
    for mode in modes:gmatch('.') do
      vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
    end
  end
end

vim.g.mapleader = ' '

-- nop
map('', 'Q',     '')
map('', 'V',     '')
map('', 'G',     '')
map('', 'gg',    '')
map('', '<c-d>', '')
map('', '<c-u>', '')
map('', '<c-f>', '')
map('', '<c-b>', '')
map('', '0',     '')

-- jumplist
map('n', '<a-w>', 'g;')
map('n', '<a-e>', 'g,')
map('n', '<a-s>', '<c-o>')
map('n', '<a-d>', '<c-i>', { noremap = true })

-- text movement
map('n', '<c-j>', '<cmd>move +1<cr>',   { silent = true })
map('n', '<c-k>', '<cmd>move -2<cr>',   { silent = true })
map('n', '<c-h>', '<<',                 { silent = true })
map('n', '<c-l>', '>>',                 { silent = true })
map('x', '<c-j>', [[:move '>+1<cr>gv]], { silent = true })
map('x', '<c-k>', [[:move '<-2<cr>gv]], { silent = true })
map('x', '<c-h>', '<gv',                { silent = true })
map('x', '<c-l>', '>gv',                { silent = true })

-- undo/redo
map('n', 'u',     '<cmd>silent undo<cr>', { silent = true })
map('n', '<c-u>', '<cmd>silent redo<cr>', { silent = true })

-- navigation
map('n', '1', 'gg', { noremap = true })
map('',  '2', '<Plug>(SmoothieDownwards)')
map('',  '3', '<Plug>(SmoothieUpwards)')
map('n', '4', 'G',  { noremap = true })

map('nx', '<a-i>', '^^')
map('nx', '<a-o>', '$')

map('n', '<tab>', '<c-w>w')
map('n', '<s-tab>', '<c-w>W')

map('n', '<enter>', '<cmd>buffer #<cr>', { silent = true })

-- 
map('n', '<c-q>', '<cmd>q<cr>')
map('n', '<c-r>', 'gr', { noremap = true, silent = true })
map('n', 'Y', 'y$', { noremap = true })
map('n', '<leader>r', ':so $MYVIMRC<cr>', { noremap = true })

-- incsearch
map('', 'n',  '<Plug>(is-nohl)<Plug>(anzu-n-with-echo)')
map('', 'N',  '<Plug>(is-nohl)<Plug>(anzu-N-with-echo)')
map('', '*',  '<Plug>(asterisk-z*)<Plug>(is-nohl-1)')
map('', 'g*', '<Plug>(asterisk-gz*)<Plug>(is-nohl-1)')
