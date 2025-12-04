


vim.keymap.set("n", "<leader>d", vim.cmd.Ex)

-- Making switching between panes easier
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- Make using the system clipboard a little easier
vim.keymap.set("n", ",yy", '"+yy')
vim.keymap.set({"n", "v"}, ",y", '"+y')
vim.keymap.set("n", ",p", '"+p')

-- Disable the stupid F1 key, that I seem to highlight
-- every time I push ESC
vim.keymap.set({"n", "v", "i", "s"}, "<F1>", "<nop>", { noremap = true, silent = true })




