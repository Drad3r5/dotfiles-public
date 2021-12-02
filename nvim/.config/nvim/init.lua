----------Lsp Config's----------------------------------------
-- Lua Lsp Config
-- ~/.config/nvim/lua/lua-ls.lua
require('lua-ls')
----------Plugin's Config-------------------------------------

-- Nvim-Cmp Config
-- ~/.config/nvim/lua/nvim-cmp.lua
require('nvim-cmp')


-- NerdTree Config
-- ~/.config/nvim/lua/nerdtree.lua
require('nerdtree')

-- Lsp List
-- ~/.config/nvim/lua/lsp.lua
require('lsp')


require('lsp_status')


--------------------------------------------------------------

----------Neovim Main Config----------------------------------

-- Editor Config
-- ~/.config/nvim/lua/main/editor.lua
require('main.editor')

-- Keymaps Config
-- ~/.config/nvim/lua/main/keymaps.lua
require('main.keymaps')

-- Plugins
-- ~/.config/nvim/lua/main/plugins.lua
require('main.plugins')
