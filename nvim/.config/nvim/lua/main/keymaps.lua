----------Keymap's Config----------

local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})
local opts = { noremap = true }
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
keymap('n', '<c-m>', ':wq<CR>', {})
keymap('n', '<c-p>', ':PackerSync<CR>', {})
keymap('n', '<s-p>', ':PackerInstall<CR>', {})


-- Tabs
keymap('n', '<leader>1', ':bp<CR>', {})
keymap('n', '<leader>2', ':bn<CR>', {})
keymap('n', '<c-w>', ':bd', {})

-- Folding
keymap('i', '<F9>', '<c-o>za', {})
keymap('n', '<F9>', 'za', {})
keymap('o', '<F9>', '<c-c>za', {})
keymap('v', '<F9>', 'za', {})

vim.cmd[[

]]


---------- Neuron Setup
vim.cmd[[

nnoremap <buffer> <CR> <cmd>lua require'neuron'.enter_link()<CR>

nnoremap <buffer> gzn <cmd>lua require'neuron/cmd'.new_edit(require'neuron'.config.neuron_dir)<CR>

nnoremap <buffer> gzz <cmd>lua require'neuron/telescope'.find_zettels()<CR>
nnoremap <buffer> gzZ <cmd>lua require'neuron/telescope'.find_zettels {insert = true}<CR>

nnoremap <buffer> gzb <cmd>lua require'neuron/telescope'.find_backlinks()<CR>
nnoremap <buffer> gzB <cmd>lua require'neuron/telescope'.find_backlinks {insert = true}<CR>

nnoremap <buffer> gzt <cmd>lua require'neuron/telescope'.find_tags()<CR>

nnoremap <buffer> gzs <cmd>lua require'neuron'.rib {address = "127.0.0.1:8200", verbose = true}<CR>

nnoremap <buffer> gz] <cmd>lua require'neuron'.goto_next_extmark()<CR>
nnoremap <buffer> gz[ <cmd>lua require'neuron'.goto_prev_extmark()<CR>]]

