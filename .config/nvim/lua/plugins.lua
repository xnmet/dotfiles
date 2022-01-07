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

  use {
    'Pocco81/AutoSave.nvim',
    config = [[require('plugged.autosave')]]
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = [[require('plugged.telescope')]],
  }

  -- use {
  --   'nvim-treesitter/nvim-treesitter',
  --   run = ':TSUpdate',
  --   requires = {
  --     'nvim-treesitter/playground',
  --     'nvim-treesitter/nvim-treesitter-textobjects',
  --   }
  -- }

  -- text
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
    {
      'easymotion/vim-easymotion',
      config = [[require('plugged.easymotion')]]
    },
    'kana/vim-textobj-user',
    'kana/vim-textobj-indent',
    'glts/vim-textobj-comment',
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
    config = [[require('plugged.cmp')]]
  }

  -- search
  use {
    'haya14busa/is.vim',
    'haya14busa/vim-asterisk',
    'osyo-manga/vim-anzu',
  }

  -- interface
  use {
    {
      'mhinz/vim-startify',
      config = [[require('plugged.startify')]]
    },
    {
      'psliwka/vim-smoothie',
      config = [[require('plugged.smoothie')]]
    },
  }

  -- lsp
  use {
    {
      'neovim/nvim-lspconfig',
      requires = {
        'williamboman/nvim-lsp-installer',
      },
    },
    'folke/trouble.nvim',
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
