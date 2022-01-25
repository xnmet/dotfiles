local set = vim.opt

-- file
set.swapfile    = false
set.undofile    = true
set.undodir     = os.getenv('HOME') .. '/.local/share/nvim/.undos/'
set.clipboard   = 'unnamedplus'
set.jumpoptions = 'stack'

-- visual
set.number         = true
set.termguicolors  = true
vim.cmd 'colorscheme sunbather'

-- window
set.splitbelow = true
set.splitright = true

-- text
set.wrap        = false
set.scrolloff   = 3
set.startofline = true

-- indent
set.expandtab  = true
set.tabstop    = 2
set.shiftwidth = 2
set.list       = true
set.listchars  = { tab = '| ' }

-- search
set.ignorecase = true
set.smartcase  = true

-- autocomplete
set.completeopt = 'menu,menuone,noselect'
