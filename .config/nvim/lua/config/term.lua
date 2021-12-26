vim.cmd [[
  augroup term_startinsert_on_winenter
    au!
    au WinEnter term://* startinsert
  augroup end
]]
