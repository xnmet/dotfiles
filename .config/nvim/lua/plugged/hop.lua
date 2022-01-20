require('hop').setup()

nvim_map('n', 's', "<cmd>lua require'hop'.hint_words({ multi_windows = true })<cr>")
nvim_map('no', 'r', "<cmd>lua require'hop'.hint_char1({ multi_windows = true })<cr>")
nvim_map('no', 'f', "<cmd>lua require'hop'.hint_lines_skip_whitespace({ multi_windows = true })<cr>")
nvim_map('no', 'e', "<cmd>lua require'hop'.hint_words({ keys = 'asdjklqweuiocn', current_line_only = true })<cr>")
