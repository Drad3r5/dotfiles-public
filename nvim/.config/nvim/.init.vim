set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set mouse=a

source /home/nathan/.config/nvim/plugin-config/coc.vim
source /home/nathan/.config/nvim/plugin-config/emmet.vim

let mapleader= ' '

call plug#begin('/home/nathan/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'scrooloose/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-orgmode/orgmode'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'build': 'release'}
Plug 'machakann/vim-sandwich'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nanotee/nvim-lua-guide'

call plug#end()

colorscheme gruvbox
let g:airline_theme='gruvbox'

if(has('termguicolors'))
    set termguicolors
endif

lua require'colorizer'.setup()

" NerdCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NerdTree
let g:NERDTreeQuitOnOpen=1
nmap <F2> :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>


lua <<EOF
  local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
  parser_config.org = {
    install_info = {
      url = 'https://github.com/milisims/tree-sitter-org',
      revision = 'main',
      files = {'src/parser.c', 'src/scanner.cc'},
    },
    filetype = 'org',
  }
EOF


lua <<EOF
  require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      disable = {'org'}, 
      additional_vim_regex_highlighting = {'org'},   },
    ensure_installed = {'org'}, -- Or run :TSUpdate org
  }
EOF

lua <<EOF
  require('orgmode').setup({
    org_agenda_files = {'~/Dropbox/org/*', '~/my-orgs/**/*'},
    org_default_notes_file = '~/Dropbox/org/refile.org',
  })
EOF

autocmd FileType cs local set tabstop = 2
