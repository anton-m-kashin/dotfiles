require('go').setup({
    goimport = 'gopls',
    gofmt = 'gopls',
    max_line_len = 80,
    lsp_inlay_hints = {
        parameter_hints_prefix = "# ",
        other_hints_prefix = "=> ",
    }
})
