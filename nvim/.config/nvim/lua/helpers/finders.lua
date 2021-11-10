local M = {}

local find_files = require('telescope.builtin').find_files

function M.find_in_nvim()
    find_files {
        cwd = vim.fn.stdpath('config'),
        hidden = true,
        prompt_prefix = 'nvim > '
    }
end

function M.find_in_dotfiles()
    find_files {
        cwd = vim.fn.expand('~/.dotfiles-new/'),
        find_command = {
            'fd',
            '--hidden',
            '--exclude', '.git',
            '--type', 'f',
            '.'
        },
        prompt_prefix = 'dotfiles > '
    }
end

return M
