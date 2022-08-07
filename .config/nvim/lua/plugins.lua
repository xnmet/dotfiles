local install_path =
  vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
end

vim.cmd [[
  augroup packer
    au!
    au BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

require('packer').startup({ function()
  use 'wbthomason/packer.nvim'

  -- sane
  use {
    'nathom/filetype.nvim',
    'tversteeg/registers.nvim',
    {
      'pocco81/auto-save.nvim',
      config = [[require('plugged.autosave')]],
    },
    {
      'windwp/nvim-autopairs',
      config = [[require('plugged.autopairs')]],
    },
    {
      'karb94/neoscroll.nvim',
      config = [[require('plugged.neoscroll')]],
    },
    {
      'haya14busa/is.vim',
      requires = {
        'haya14busa/vim-asterisk',
        'osyo-manga/vim-anzu',
      },
      config = [[require('plugged.incsearch')]],
    },
  }

  use {
    'norcalli/nvim-colorizer.lua',
    config = [[require('colorizer').setup {'css', 'javascript', 'vim', 'html'}]],
  }

  use {
    'andymass/vim-matchup',
    requires = { 'nvim-treesitter/nvim-treesitter' },
  }

  use {
    'phaazon/hop.nvim',
    config = [[require('plugged.hop')]],
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = [[require('plugged.telescope')]],
  }

  -- text manipulation
  use {
    {
      'junegunn/vim-easy-align',
      config = [[require('plugged.easyalign')]]
    },
    {
      'tpope/vim-commentary',
      config = [[require('plugged.commentary')]]
    },
    {
      'machakann/vim-sandwich',
      config = [[require('plugged.sandwich')]]
    },
    {
      'chaoren/vim-wordmotion',
      config = [[require('plugged.wordmotion')]]
    },
    'kana/vim-textobj-user',
    'kana/vim-textobj-indent',
    'glts/vim-textobj-comment',
  }

  -- interface
  use {
    {
      'mhinz/vim-startify',
      config = [[require('plugged.startify')]],
    },
    {
      'nvim-lualine/lualine.nvim',
      config = [[require('plugged.lualine')]],
    }
  }

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
    },
    config = [[require('plugged.cmp')]],
  }

  -- lsp
  use {
    {
      'williamboman/nvim-lsp-installer',
      requires = { 'neovim/nvim-lspconfig' },
      config = [[require('plugged.lsp')]],
    },
    {
      'folke/trouble.nvim',
      config = [[require('plugged.trouble')]],
    },
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      'nvim-treesitter/playground',
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = [[require('plugged.treesitter')]],
  }

  -- colorschemes
  use {
    'widatama/vim-phoenix',
    'nikolvs/vim-sunbather',
    'arcticicestudio/nord-vim',
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end,

config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}

})
