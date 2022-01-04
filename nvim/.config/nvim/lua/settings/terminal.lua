vim.api.nvim_exec([[
    augroup TerminalStuff
        au!
        autocmd TermOpen * setlocal nonumber norelativenumber
        autocmd TermEnter * setlocal nocursorline
        autocmd TermLeave * setlocal cursorline
    augroup END
]], true)
