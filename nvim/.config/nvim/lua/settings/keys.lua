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

map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
