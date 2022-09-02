-- Helper
local g = vim.g
local o = vim.opt
local fn = vim.fn
local cmd = vim.cmd
local api = vim.api

function set(option, value) 
    value = value or true
    o[option] = value
end

function map(mode, keys, action, additional_options) 
    local options = { noremap = true }
    if additional_options then
        options = vim.tbl_extend('force', options, additional_options)
    end

    api.nvim_set_keymap(mode, keys, action, options)
end
