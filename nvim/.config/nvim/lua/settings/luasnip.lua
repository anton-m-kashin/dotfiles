local luasnip = require("luasnip")

luasnip.filetype_set("pandoc", { "md" })
luasnip.filetype_set("pandoc", { "markdown" })

local loader = require("luasnip.loaders.from_vscode")

loader.lazy_load({ paths = { "./friendly-snippets/" } })
loader.lazy_load({ paths = { "./my-snippets/" } })
