-- Code folding

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
-- vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99 
vim.opt.foldnestmax = 4

vim.keymap.set("n", "<space>", "za")

-- vim.keymap.set("n", " ", vim.cmd.foldtoggle)
