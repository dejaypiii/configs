local g = vim.g
local cmd = vim.cmd
require('helper')

-- Settings
g.mapleader = ' '
g.maplocalleader = ' '
set('termguicolors')
set('showmatch')
set('ignorecase')
set('hlsearch')
set('incsearch')
set('tabstop', 4)
set('softtabstop', 4)
set('expandtab')
set('shiftwidth', 4)
set('autoindent')
set('number')
set('relativenumber')
set('wildmode', { 'longest', 'list' })
set('mouse', 'a')
set('clipboard', 'unnamedplus')
set('ttyfast')

-- Key-Bindings
map('i', 'jk', '<Esc>')
map('n', '<leader><space>', '<cmd>noh<CR>')
map('n', '<leader>ww', '<cmd>bnext<CR>')
map('n', '<leader>wq', '<cmd>bdelete<CR>')

-- Plugins
if not g.vscode then
    require('plugins')

--    require('lualine').setup { options = { theme = "gruvbox-baby" } }
    g.catppuccin_flavour = 'frappe'
    require('catppuccin').setup()
    require('plugins.tree-sitter-config')
    require('plugins.lsp-config')
    require('plugins.cmp-config')
    require('plugins.telescope-config')
    require('plugins.nvim-tree-config')

--    cmd('colorscheme gruvbox-baby')
    cmd('colorscheme catppuccin')
end

