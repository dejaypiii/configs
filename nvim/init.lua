-- Helper
local g = vim.g
local o = vim.opt
local fn = vim.fn
local cmd = vim.cmd
local api = vim.api

function set(option, value) 
	if value == nil then
		value = true
	end

	o[option] = value
end

function map(mode, keys, action, additional_options) 
	local options = { noremap = true }
	if additional_options then
		options = vim.tbl_extend('force', options, additional_options)
	end

	api.nvim_set_keymap(mode, keys, action, options)
end

-- Settings
g.mapleader = ' '
g.maplocalleader = ' '
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

cmd('syntax on')
cmd('filetype plugin indent on')
cmd('filetype plugin on')

-- Key-Bindings
map('i', 'jk', '<Esc>')
map('v', 'jk', '<Esc>')
map('n', '<leader><space>', '<cmd>noh<CR>')

-- Plugins
if not g.vscode then
    require('plugins')

    require('lualine').setup {
        options = { theme = "gruvbox-baby" }
    }

    cmd('colorscheme gruvbox-baby')
end

