vim.opt.number = true
vim.opt.inccommand = 'nosplit'
vim.opt.visualbell = true
vim.opt.cursorline = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.spelllang = 'en,ru'
vim.opt.complete:append('kspell')

vim.o.completeopt = 'menuone,noselect'

vim.opt.smartindent = true

vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

vim.opt.list = true
vim.opt.listchars = {
    trail = '·'
}

vim.opt.foldmethod = 'indent'
vim.opt.foldnestmax = 3
vim.opt.foldenable = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.backup = false
vim.opt.writebackup = false

vim.opt.directory = {
    '~/.local/tmp/nvim/swap',
    '/tmp'
}

vim.opt.showmatch = true
vim.opt.linebreak = true

vim.opt.textwidth = 80

vim.opt.keymap = 'russian-jcukenmac'
vim.opt.iminsert = 0
vim.opt.imsearch = 0

vim.cmd[[colorscheme neon]]
