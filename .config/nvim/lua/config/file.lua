vim.cmd [[
  augroup file_filetype_space
    au Filetype c,haskell,python,php setl ts=4 sw=4
  augroup end
]]

vim.cmd [[
  match ColorColumn /\%<82v.\%>81v/
]]
