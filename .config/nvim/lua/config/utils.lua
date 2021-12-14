function nvim_map(...)
  local modes, lhs, rhs, opts = ...
  opts = opts or {}
  if string.len(modes) < 2 then
    vim.api.nvim_set_keymap(modes, lhs, rhs, opts)
  else
    for mode in modes:gmatch('.') do
      vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
    end
  end
end
