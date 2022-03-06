require('hop').setup()

nvim_map('nx', 's', "<cmd>lua require('hop').hint_words({ multi_windows = true })<cr>")
nvim_map('nxo', 'r', "<cmd>lua require('hop').hint_char1({ multi_windows = true })<cr>")
nvim_map('nxo', 'f', "<cmd>lua require('hop').hint_lines_skip_whitespace({ multi_windows = true })<cr>")
nvim_map('nxo', 'e', "<cmd>lua require('hop').hint_words({ keys = 'asdjklqweuiocn', current_line_only = true })<cr>")
