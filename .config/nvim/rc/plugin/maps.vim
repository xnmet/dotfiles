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

" nmap <silent> <space> :silent update<cr>

nmap <tab>   <c-w>w
nmap <s-tab> <c-w>W

" why does it need ! now? lol
nnoremap <silent> u     :silent! undo<cr>
nnoremap <silent> <c-u> :silent! redo<cr>

" 1 window
" - 3 ks map s <Plug>(easymotion-jumptoanywhere)
" N window
" - 3-4 ks (1c) nmap s <Plug>(easymotion-overwin-f)
"   - with vim-repeat, removes 1c
"   - no 'jumping to'
" - 3 ks        nmap <Leader>W <Plug>(easymotion-overwin-w)
"   - limited, only beggining of word
" Trash
" - !bd-jk    nmap <Leader>L <Plug>(easymotion-overwin-line)
" - 4 ks (2c) nmap <leader>S <Plug>(easymotion-overwin-f2)

" nmap r <Plug>(easymotion-overwin-w)
nmap r <Plug>(easymotion-overwin-f)
map  s <Plug>(easymotion-jumptoanywhere)
map  f <Plug>(easymotion-bd-jk)
map  e <Plug>(easymotion-lineanywhere)

" nmap <Leader><Leader>n <Plug>(easymotion-next)
" nmap <Leader><Leader>N <Plug>(easymotion-prev)
nmap <leader>v <Plug>(easymotion-repeat)

map n  <Plug>(is-nohl)<Plug>(anzu-n-with-echo)
map N  <Plug>(is-nohl)<Plug>(anzu-N-with-echo)
map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)

map w  <Plug>WordMotion_w
map b  <Plug>WordMotion_b
map t  <Plug>WordMotion_e

omap aw <Plug>WordMotion_aw
omap iw <Plug>WordMotion_iw

nnoremap Y y$

" ALT

set jumpoptions+=stack

nmap     <a-s> <c-o>
nnoremap <a-d> <c-i>
nmap     <a-w> g;
nmap     <a-e> g,

" nmap     <a-s> `.
" nmap     <a-d> ``
" nmap     <a-e> g,

"
" alt only in vim?
nmap     <a-i> ^^
nmap     <a-o> $
" nnoremap <a-h> gg
" nmap     <a-j> <Plug>(SmoothieDownwards)
" nmap     <a-k> <Plug>(SmoothieUpwards)
" nnoremap <a-l> G

nnoremap 1 gg
nmap     2 <Plug>(SmoothieDownwards)
nmap     3 <Plug>(SmoothieUpwards)
nnoremap 4 G

nnoremap [e :so $MYVIMRC<CR>

" TEXT OBJECT / VISUAL

" omap ir i(
" omap ar a(
" xmap ir i(
" xmap ar a(

" omap iu i[
" omap au a[
" xmap iu i[
" xmap au a[

" omap ik i{
" omap ak a{
" xmap ik i{
" xmap ak a{

" nmap ga <Plug>(EasyAlign)
" xmap ga <Plug>(EasyAlign)
" nmap zk <Plug>(EasyAlign)
" xmap zk <Plug>(EasyAlign)
nmap cn <Plug>(EasyAlign)
xmap cn <Plug>(EasyAlign)

" save in register?
" move char instead of line??

" does not delete commentary
noremap [e :so $MYVIMRC<CR>
" xmap zn  <Plug>Commentary
" nmap zn  <Plug>Commentary
" omap zn  <Plug>Commentary
" nmap znn <Plug>CommentaryLine
" nmap znm <Plug>Commentary<Plug>Commentary
" nmap czn <Plug>ChangeCommentary

" https://github.com/tpope/vim-commentary/pull/133
xmap cm  <Plug>Commentary
nmap cm  <Plug>Commentary
omap cm  <Plug>Commentary
nmap cmm <Plug>CommentaryLine
nmap cmc <Plug>Commentary<Plug>Commentary
nmap cmi <Plug>ChangeCommentary

" change S
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

" tmp test
" nmap <c-o> o<esc>k
" nmap <c-p> O<esc>j

nmap <c-q> :q<cr>

" LEADER
let mapleader = ' '

nmap <leader>s :Rg<space>
nmap <leader>d :Buffers<cr>
nmap <leader>f :Files<cr>
nmap <leader>c :Colors<cr>

" map <leader>s <Plug>(easymotion-overwin-f2)
" map <leader>t <Plug>(easymotion-overwin-line)
" nmap <s-s> :call WindowSwap#EasyWindowSwap()<cr>
"
" SHIFT
" nmap <s-j> <c-w>-
" nmap <s-k> <c-w>+
" nmap <s-h> <c-w><
" nmap <s-l> <c-w>>
"
" tmap <leader>e <c-\><c-n>
" tmap <leader>n <leader>e<c-w>w

" function! OpfuncSteady()
"   if !empty(&operatorfunc)
"     call winrestview(w:opfuncview)
"     unlet w:opfuncview
"     noautocmd set operatorfunc=
"   endif
" endfunction

" augroup OpfuncSteady
"   autocmd!
"   autocmd OptionSet operatorfunc let w:opfuncview = winsaveview()
"   autocmd CursorMoved * call OpfuncSteady()
" augroup END

" u/olminator
augroup yank_restore_cursor
    autocmd!
    autocmd VimEnter,CursorMoved *
        \ let s:cursor = getpos('.')
    autocmd TextYankPost *
        \ if v:event.operator ==? 'y' |
            \ call setpos('.', s:cursor) |
        \ endif
augroup END
