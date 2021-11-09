vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local noremap = { noremap = true }

map('i', [[<C-\>]], [[<C-^>]], noremap) -- layout changed

map('n', '<leader>h', ':nohlsearch<CR>', noremap)
map('n', '<leader>d', ':bdelete<CR>', noremap)

map('n', '<leader>ff', ':Telescope find_files<CR>', noremap)
map('n', '<leader>fg', ':Telescope live_grep<CR>', noremap)
map('n', '<leader>b', ':Telescope buffers<CR>', noremap)
map('n', '<leader>fh', ':Telescope oldfiles<CR>', noremap)
