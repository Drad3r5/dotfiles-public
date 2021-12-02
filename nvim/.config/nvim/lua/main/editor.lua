vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.o.number = true
vim.o.relativenumber = true
vim.g.mapleader = ' '

vim.cmd [[
colorscheme molokai
set noswapfile
set nowrap
set nobackup
set undofile

setlocal foldmethod=indent
set nofoldenable
set foldlevel=99
set fillchars=fold:\ "The backslash escapes a space
set foldtext=CustomFoldText()

function! CustomFoldText()
  let indentation = indent(v:foldstart - 1)
  let foldSize = 1 + v:foldend - v:foldstart
  let foldSizeStr = " " . foldSize . " lines "
  let foldLevelStr = repeat("+--", v:foldlevel)
  let expansionString = repeat(" ", indentation)

  return expansionString . foldLevelStr . foldSizeStr
endfunction














]]

vim.opt.undodir='/home/nathan/.config/nvim/undodir'


vim.opt.fileformat = 'unix'
vim.opt.cursorline = true
vim.opt.autoindent = true


