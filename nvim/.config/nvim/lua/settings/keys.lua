vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local noremap = { noremap = true }

map('i', [[<C-\>]], [[<C-^>]], noremap) -- layout changed

map('n', '<leader>n', ":bnext<CR>", noremap)
map('n', '<leader>p', ":bprevious<CR>", noremap)

map('n', '<leader>h', ':nohlsearch<CR>', noremap)
map('n', '<leader>d', ':bdelete<CR>', noremap)

map('n', '<leader>ff', ':Telescope find_files<CR>', noremap)
map('n', '<leader>fg', ':Telescope live_grep<CR>', noremap)
map('n', '<leader>b', ':Telescope buffers<CR>', noremap)
map('n', '<leader>fh', ':Telescope oldfiles<CR>', noremap)

map(
    'n',
    '<leader>fcv',
    ':lua require("helpers.finders").find_in_nvim()<CR>',
    noremap
)
map(
    'n',
    '<leader>fcd',
    ':lua require("helpers.finders").find_in_dotfiles()<CR>',
    noremap
)
