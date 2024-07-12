require("luasnip.loaders.from_snipmate").lazy_load({paths = "./snippets"})

local ls = require 'luasnip'
vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})

