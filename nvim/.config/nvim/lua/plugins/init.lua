local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use 'rafamadriz/neon'
    use 'vim-pandoc/vim-pandoc'
    use 'vim-pandoc/vim-pandoc-syntax'
    use 'cespare/vim-toml'
    use 'windwp/nvim-autopairs'
    use 'numToStr/FTerm.nvim'
end)

require('plugins.autopairs')
require('plugins.cmp')
require('plugins.fterm')
require('plugins.lsp')
require('plugins.sumneko')
require('plugins.lualine')
require('plugins.luasnip')
require('plugins.pandoc')
require('plugins.telescope')
require('plugins.treesitter')
