" NOP

map V     <nop>
map G     <nop>
map gg    <nop>
map <c-d> <nop>
map <c-u> <nop>
map <c-f> <nop>
map <c-b> <nop>
map 0     <nop>

" NORMAL

nmap <silent> <enter> :buffer #<cr>

nmap <tab>   <c-w>w
nmap <s-tab> <c-w>W

nmap r <Plug>(easymotion-overwin-f)
map  s <Plug>(easymotion-jumptoanywhere)
map  f <Plug>(easymotion-bd-jk)
map  e <Plug>(easymotion-lineanywhere)

map n  <Plug>(is-nohl)<Plug>(anzu-n-with-echo)
map N  <Plug>(is-nohl)<Plug>(anzu-N-with-echo)
map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)

map w  <Plug>WordMotion_w
map b  <Plug>WordMotion_b
map t  <Plug>WordMotion_e
omap aw <Plug>WordMotion_aw
omap iw <Plug>WordMotion_iw
xmap aw <Plug>WordMotion_aw
xmap iw <Plug>WordMotion_iw

nnoremap Y y$

nnoremap 1 gg
nmap     2 <Plug>(SmoothieDownwards)
nmap     3 <Plug>(SmoothieUpwards)
nnoremap 4 G

" ALT

nmap     <a-s> <c-o>
nnoremap <a-d> <c-i>
nmap     <a-w> g;
nmap     <a-e> g,

nmap     <a-i> ^^
nmap     <a-o> $

" TEXT OBJECT

nmap cn <Plug>(EasyAlign)
xmap cn <Plug>(EasyAlign)

xmap cm  <Plug>Commentary
nmap cm  <Plug>Commentary
omap cm  <Plug>Commentary
nmap cmm <Plug>CommentaryLine
nmap cmc <Plug>Commentary<Plug>Commentary
nmap cmi <Plug>ChangeCommentary

xmap is <Plug>(textobj-sandwich-auto-i)
xmap as <Plug>(textobj-sandwich-auto-a)
omap is <Plug>(textobj-sandwich-auto-i)
omap as <Plug>(textobj-sandwich-auto-a)

xmap iss <Plug>(textobj-sandwich-auto-i)
xmap ass <Plug>(textobj-sandwich-auto-a)
omap iss <Plug>(textobj-sandwich-auto-i)
omap ass <Plug>(textobj-sandwich-auto-a)

xmap iq <Plug>(textobj-sandwich-query-i)
xmap aq <Plug>(textobj-sandwich-query-a)
omap iq <Plug>(textobj-sandwich-query-i)
omap aq <Plug>(textobj-sandwich-query-a)

call operator#sandwich#set('all', 'all', 'highlight', 0)

runtime macros/sandwich/keymap/surround.vim

" CTRL

nmap <silent> <c-j> :move +1<cr>
nmap <silent> <c-k> :move -2<cr>
nmap <silent> <c-h> <<
nmap <silent> <c-l> >>
xmap <silent> <c-j> :move '>+1<cr>gv
xmap <silent> <c-k> :move '<-2<cr>gv
xmap <silent> <c-h> <gv
xmap <silent> <c-l> >gv

nnoremap <silent> <c-r> gr

nmap <c-q> :q<cr>

nmap <silent> <c-u> :silent redo<cr>

" LEADER

let mapleader = ' '

nmap <leader>s :Rg<space>
nmap <leader>d :Buffers<cr>
nmap <leader>f :Files<cr>
nmap <leader>c :Colors<cr>

nmap <leader>v <Plug>(easymotion-repeat)

nnoremap <leader>e :so $MYVIMRC<CR>
