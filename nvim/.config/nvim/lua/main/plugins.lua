----------Plugins-------------------


require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
  ----- Colorschemes -----
  use {
    'tomasr/molokai',
    'morhetz/gruvbox'
  }
  use {'jiangmiao/auto-pairs'}
  use {'Shougo/defx.nvim'}
  -- use {'hrsh7th/nvim-compe'}
  ----- Vim-airline Plugins --------
  use {
    'vim-airline/vim-airline',
    'vim-airline/vim-airline-themes'
}
  use {'ryanoasis/vim-devicons'}
  use {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',

  }
  ----- LSP Essential Plugins -------
  use {
    'neovim/nvim-lspconfig',
    'onsails/lspkind-nvim',
    'nvim-lua/lsp-status.nvim',
    'williamboman/nvim-lsp-installer'
  }
  ---- Nvim-Cmp  Sub-Plugins -----------
  use {
    'hrsh7th/vim-vsnip',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'petertriho/cmp-git',
    'hrsh7th/cmp-buffer',
    'tzachar/cmp-tabnine',
    'hrsh7th/cmp-nvim-lua',
    'lukas-reineke/cmp-rg',
    'f3fora/cmp-spell',
    'andersevenrud/compe-tmux',
    'David-Kunz/cmp-npm',
    'lukas-reineke/cmp-under-comparator',
  }
  use {'davidgranstrom/nvim-markdown-preview'}


end)


--------------------------------------

