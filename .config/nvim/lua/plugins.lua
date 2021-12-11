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
    'chaoren/vim-wordmotion', 
    config = [[require('plugged.wordmotion')]]
  }

  use {
    'junegunn/vim-easy-align',
    config = [[require('plugged.easyalign')]]
  }

  use {
    'tpope/vim-commentary',
    config = [[require('plugged.commentary')]]
  }

  use {
    'machakann/vim-sandwich',
    config = [[require('plugged.sandwich')]]
  }

  use {
    'easymotion/vim-easymotion',
    config = [[require('plugged.easymotion')]]
  }

  use {
    'junegunn/fzf.vim',
    config = [[require('plugged.fzf')]]
  }

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'folke/trouble.nvim'

  use 'nvim-lua/plenary.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'nvim-treesitter/playground'

  use 'kana/vim-textobj-user'

  use 'kana/vim-textobj-indent'
  use 'glts/vim-textobj-comment'

  use 'nvim-telescope/telescope.nvim'

  use 'haya14busa/is.vim'
  use 'haya14busa/vim-asterisk'
  use 'osyo-manga/vim-anzu'

  use {
    'mhinz/vim-startify',
    config = [[require('plugged.startify')]]
  }

  use {
    'jiangmiao/auto-pairs',
    config = [[require('plugged.auto-pairs')]]
  }

  -- Plug 'tpope/vim-repeat'

  use {
    'psliwka/vim-smoothie',
    config = [[require('plugged.smoothie')]]
  }

  use 'widatama/vim-phoenix'

  use 'andreasvc/vim-256noir'
  use 'nikolvs/vim-sunbather'
  use 'dracula/vim'
  use 'preservim/vim-colors-pencil'
  use 'whatyouhide/vim-gotham'
  use 'arcticicestudio/nord-vim'
  use 'sainnhe/sonokai'
  use 'mangeshrex/uwu.vim'
  use 'joshdick/onedark.vim'

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
