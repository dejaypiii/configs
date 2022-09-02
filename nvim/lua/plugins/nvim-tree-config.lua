require('helper')
require('nvim-tree').setup()

map('n', '<leader>ee', '<cmd>NvimTreeToggle<cr>')
map('v', '<leader>ee', '<cmd>NvimTreeToggle<cr>')
map('n', '<leader>ef', '<cmd>NvimTreeFocus<cr>')
map('v', '<leader>ef', '<cmd>NvimTreeFocus<cr>')
map('n', '<leader>eg', '<cmd>NvimTreeFindFile<cr>')
map('v', '<leader>eg', '<cmd>NvimTreeFindFile<cr>')
map('n', '<leader>ec', '<cmd>NvimTreeCollapse<cr>')
map('v', '<leader>ec', '<cmd>NvimTreeCollapse<cr>')

