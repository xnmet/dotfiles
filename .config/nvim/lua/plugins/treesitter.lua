require('nvim-treesitter.configs').setup {
  ensure_installed = 'maintained',
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    custom_captures = {
        -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
        ['type'] = 'Identifier',
        ['field'] = 'Text',
    },
  },
  incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        -- ["af"] = "@function.outer",
        -- ["if"] = "@function.inner",
        -- ["ac"] = "@class.outer",
        -- ["ic"] = "@class.inner",
        -- ["ay"] = "@statement.outer",
        -- ["iy"] = "@statement.inner",
        -- ["ia"] = "@parameter.inner",
        -- ["ib"] = "@block.inner",
        -- ["ab"] = "@block.outer",
        -- ["ak"] = "@comment.outer",
      },
    },
    swap = {
        enable = true,
        -- swap_next = {
        --   ["<leader>a"] = "@parameter.inner",
        -- },
        -- swap_previous = {
        --   ["<leader>A"] = "@parameter.inner",
        -- },
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      -- goto_next_start = {
      --   ["cj"] = "@function.outer",
        -- ["cu"] = "@class.outer",
      -- },
      -- goto_next_end = {
      --   ["]M"] = "@function.outer",
        -- ["]["] = "@class.outer",
      -- },
      -- goto_previous_start = {
      --   ["ck"] = "@function.outer",
        -- ["ci"] = "@class.outer",
      -- },
      -- goto_previous_end = {
      --   ["[M"] = "@function.outer",
        -- ["[]"] = "@class.outer",
      -- },
    },
    playground = {
      enable = true,
      disable = {},
      updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
      persist_queries = false, -- Whether the query persists across vim sessions
      keybindings = {
        toggle_query_editor = 'o',
        toggle_hl_groups = 'i',
        toggle_injected_languages = 't',
        toggle_anonymous_nodes = 'a',
        toggle_language_display = 'I',
        focus_language = 'f',
        unfocus_language = 'F',
        update = 'R',
        goto_node = '<cr>',
        show_help = '?',
      },
  },
}
