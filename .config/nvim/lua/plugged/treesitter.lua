require('nvim-treesitter.configs').setup({
  ensure_installed = 'maintained',
  indent = {
    enable = true,
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ak'] = '@class.outer',
        ['ik'] = '@class.inner',
        ['ia'] = '@parameter.inner',
        ['ad'] = '@conditional.outer',
        ['id'] = '@conditional.inner',
      },
    },
    swap = {
        enable = true,
        swap_next = {
          ['<leader><leader>s'] = '@parameter.inner',
        },
        swap_previous = {
          ['<leader><leader>a'] = '@parameter.inner',
        },
    },
    move = {
      enable = true,
      goto_next_start = {
        ['<a-n>'] = '@function.outer',
        ['<a-m>'] = '@class.outer',
      },
      goto_next_end = {
        ['<leader><a-n>'] = '@function.outer',
        ['<leader><a-m>'] = '@class.outer',
      },
      goto_previous_start = {
        ['<a-N>'] = '@function.outer',
        ['<a-M'] = '@class.outer',
      },
      goto_previous_end = {
        ['<leader><a-N>'] = '@function.outer',
        ['<leader><a-M>'] = '@class.outer',
      },
    },
  },
  matchup = {
    enable = true,
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false,
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
})

require('nvim-treesitter.highlight').set_custom_captures({
  ['type'] = 'Identifier',
  ['field'] = 'Text',
  ['punctuation.bracket'] = 'Macro',
  ['constructor'] = 'Macro',
})
