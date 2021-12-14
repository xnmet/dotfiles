vim.cmd [[
  augroup cursor_keep_pos_on_yank
    au!
    au VimEnter,CursorMoved * 
      \ let b:cursor = getpos('.')
    au TextYankPost *
      \ if v:event.operator ==? 'y' |
        \ call setpos('.', b:cursor) |
      \ endif
  augroup end
]]

vim.cmd [[
  augroup cursor_restore_last_pos
    au!
    au BufRead * call setpos('.', getpos("'\""))
  augroup end
]]
