vim.cmd [[
  fun! s:save_buf_view()
    let w:saved_bufs_view = get(w:, 'saved_bufs_view', {})
    let w:saved_bufs_view[bufnr('%')] = winsaveview()
  endfun

  fun! s:restore_buf_view()
    let bufnr = bufnr('%')
    if exists('w:saved_bufs_view') && has_key(w:saved_bufs_view, bufnr)
      call winrestview(w:saved_bufs_view[bufnr])
      unlet w:saved_bufs_view[bufnr]
    endif
  endfun

  augroup buffer_preserve_viewpoint
    au!
    au BufLeave * call <SID>save_buf_view()
    au BufEnter * call <SID>restore_buf_view()
  augroup end
]]
