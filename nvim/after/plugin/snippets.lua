require("luasnip.loaders.from_snipmate").lazy_load({paths = "./snippets"})

local ls = require 'luasnip'

vim.keymap.set({"i"}, "<C-K>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, {silent = true})

