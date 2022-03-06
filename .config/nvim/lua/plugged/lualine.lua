require('lualine').setup({
  icons_enabled = false,
  options = {
    section_separators = '',
    component_separators = '',
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = { },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
})
