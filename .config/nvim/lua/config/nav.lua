local M = {}

local toggle = false
local buffers_enabled = {}
local maps = { 
  { 'n', 'j', "<cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 300)<cr>", {} },
  { 'n', 'k', "<cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 300)<cr>", {} },
  { 'n', 'h', 'gg', { noremap = true } },
  { 'n', 'l', 'G', { noremap = true } },
}

function enable()
  M.enable_buffer()
  vim.cmd [[
    augroup nav
      au!
      au BufEnter  * lua require('config.nav').enable_buffer()
      au BufDelete * lua require('config.nav').remove_buffer()
    augroup end
  ]]
end

function disable()
  for fake_buf_id, _ in pairs(buffers_enabled) do
    local buf_id = fake_buf_id - 1
    if vim.fn.bufexists(buf_id) == 1 then
      for _, map in ipairs(maps) do
        vim.api.nvim_buf_del_keymap(buf_id, map[1], map[2])
      end
    end
  end
  buffers_enabled = {}

  vim.cmd [[
    augroup nav
      au!
    augroup end
  ]]
end

function M.enable_buffer()
  local buf_id = vim.api.nvim_get_current_buf()
  local fake_buf_id = buf_id + 1
  if buffers_enabled[fake_buf_id] 
    or vim.fn.filereadable(vim.fn.bufname(buf_id)) == 0
  then
    return
  end
  buffers_enabled[fake_buf_id] = true

  for _, map in ipairs(maps) do
    vim.api.nvim_buf_set_keymap(0, map[1], map[2], map[3], map[4])
  end
end

function M.remove_buffer()
  local buf_id = vim.fn.expand('<abuf>')
  buffers_enabled[buf_id + 1] = nil
end

function M.toggle()
  if toggle == false then
    toggle = true
    enable()
    print('nav on')
  else
    toggle = false
    disable()
    print('nav off')
  end
end

nvim_map('n', '<leader>n', "<cmd>lua require('config.nav').toggle()<cr>")

return M
