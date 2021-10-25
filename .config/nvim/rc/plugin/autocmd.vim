"
" colorscheme transparent
"
fun! s:transparent()
  hi Normal guibg=NONE ctermbg=NONE
  hi TabLineFill guibg=NONE ctermbg=NONE
  hi VertSplit guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi NonText guibg=NONE ctermbg=NONE
endfun

map <F2> :call <SID>transparent()<cr>

"
" term
"
augroup rc_term
  au!
  au WinEnter term://* startinsert
augroup END

"
" file
"
augroup rc_file
  au!
  " save cursor position
  au BufRead * call setpos('.', getpos("'\""))
  " autosave
  " au BufWinLeave,FocusLost * silent update
  au InsertLeave,TextChanged * silent update
augroup END

"
" space
"
fun! s:trim_whitespace()
  let save = winsaveview()
  %s/\s\+$//e
  call winrestview(save)
endfun

augroup rc_space
  au!
  au BufWrite * call <SID>trim_whitespace()
  au Filetype c,haskell,python,php setl ts=4 sw=4
augroup END

"
" window
"
fun! s:save_buf_view()
  let w:Saved_bufs_view = get(w:, 'Saved_bufs_view', {})
  let w:Saved_bufs_view[bufnr('%')] = winsaveview()
endfun

" avoid scrolling when switching buffers
fun! s:restore_buf_view()
  let bufnr = bufnr('%')
  if exists('w:Saved_bufs_view') && has_key(w:Saved_bufs_view, bufnr)
    call winrestview(w:Saved_bufs_view[bufnr])
    unlet w:Saved_bufs_view[bufnr]
  endif
endfun

augroup rc_window
  au!
  au BufLeave * call <SID>save_buf_view()
  au BufEnter * call <SID>restore_buf_view()
augroup END

"
" autocomplete
"
fun! s:autocomplete()
  if pumvisible()
    return "\<c-p>"
  endif

  let is_start_of_line  = col('.') == 1
  let key_behind_cursor = strpart(getline('.'), col('.') - 2, 1)
  let isnt_space_or_tab = "[^ \t]"

  if !is_start_of_line && key_behind_cursor =~ isnt_space_or_tab
    return "\<c-x>\<c-p>"
  else
    return "\<tab>"
  endif
endfun

imap <expr> <tab>   pumvisible() ? "\<c-n>" : <SID>autocomplete()
imap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
