set noswapfile
set undofile
set undodir=~/.config/nvim/.undos/
set clipboard+=unnamedplus

set expandtab
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:\|\ ,

set splitbelow
set splitright

set ignorecase
set smartcase
set wildmode=list:longest,full
set completeopt=menu,longest

set nowrap
set scrolloff=5
set nostartofline

set number
set relativenumber
set termguicolors
set background=dark
colorscheme phoenix

set statusline=
set statusline+=\ %F\ %m%r
set statusline+=%=
set statusline+=\ %l-%c/%L
