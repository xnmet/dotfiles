" map  V     <nop>
" map  G     <nop>
" map  gg    <nop>
" imap (     <nop>
" imap )     <nop>
" imap _     <nop>
" map  <c-d> <nop>
" map  <c-u> <nop>
" map  <c-f> <nop>
" map  <c-b> <nop>

" nmap 0 ^^
" nmap 9 $
" nmap 8 `.
" nmap 7 ``
" nnoremap 1 gg
" nnoremap 4 G
" nnoremap <silent> 2 :call comfortable_motion#flick(+2.7 * winheight(0))<cr>
" nnoremap <silent> 3 :call comfortable_motion#flick(-2.7 * winheight(0))<cr>

let g:easyfiles_tabline = {
   \ 'motion': {'highlight': ['#FF0000', 'bold']},
   \ 'format': {
     \ 'files': {
       \ 'line': function('easyfiles#tabline#format_files#line', [{
         \ 'wrapper': easyfiles#tabline#format_files#intercalate(['Color1', 'Color2']),
       \ }]),
     \ },
     \ 'tabs': {
       \ 'show_one': v:false,
       \ 'line': function('easyfiles#tabline#format_tabs#state', [{
         \ 'active':   '%#ActiveTab# %t %*',
         \ 'inactive': '%#Tab# %t %*',
       \ }]),
     \ },
   \ },
 \ }

" hi Color1 guibg=#006400 guifg=black
" hi Color2 guibg=#90ee90 guifg=black

" hi TabLineFill guibg=black ctermbg=NONE
" hi TabLine guibg=black ctermbg=NONE

" better struture to hsl and preview
  " \ '*': {
  "   \ 'TabLineFill': {'gui': ['none', 'none']},
  "   \ 'VertSplit':   {'gui': [[['VertSplit', 'fg']], 'none']},
  " \ },

" - better preview
" - better API for hsl
call highlight#colorscheme#with({
  \ 'phoenix': {
    \ 'Color1':    {'gui': ['#FFFFFF', [['Constant', 'fg'], [15, -30, 0]]]},
    \ 'Color2':    {'gui': ['#FFFFFF', [['Constant', 'fg'], [0, -30, 0]]]},
  \ },
  \ 'dracula': {
    \ 'Color1':    {'gui': ['#FFFFFF', [['Constant', 'fg']]]},
    \ 'Color2':    {'gui': ['#FFFFFF', [['Special', 'fg']]]},
    \ 'Pmenu':     {'gui': ['#FFFFFF', [['Tag', 'fg'], [0, -20, 0]]]},
    \ 'PmenuSel':  {'gui': ['#FFFFFF', [['Tag', 'fg'], [10, 0, 0]]]},
  \ },
\ })

" headless interface here too!
nmap ; <Plug>(easyfiles-tabline-motion)
call easyfiles#tabline#motion#map_actions({
  \ '<leader>;': [['s', 'split'], ['v', 'vsplit'], ['d', 'bwipe', 'remove']],
\ })
