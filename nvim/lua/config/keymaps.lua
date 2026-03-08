


vim.keymap.set("n", "<leader>d", vim.cmd.Ex)

-- Make using the system clipboard a little easier
vim.keymap.set("n", "YY", '"+yy')
vim.keymap.set({"n", "v"}, "Y", '"+y')
vim.keymap.set("n", "P", '"+p')

-- Exit terminal mode with C-k
vim.keymap.set("t", "<C-t>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Disable the stupid F1 key, that I seem to highlight
-- every time I push ESC
vim.keymap.set({"n", "v", "i", "s", "t"}, "<F1>", "<nop>", { noremap = true, silent = true })


