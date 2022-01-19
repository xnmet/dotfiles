vim.cmd [[
  augroup file_filetype_space
    au Filetype c,haskell,python,php setl ts=4 sw=4
  augroup end
]]

vim.cmd [[
  hi LengthHardLimit ctermfg=red guifg=red
  match LengthHardLimit /\%>79v.*\%<81v/
]]
