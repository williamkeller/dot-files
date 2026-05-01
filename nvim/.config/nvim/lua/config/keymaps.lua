
vim.keymap.set("n", "<leader>d", ":Oil<cr>")

-- Make using the system clipboard a little easier
vim.keymap.set("n", "YY", '"+yy')
vim.keymap.set({"n", "v"}, "Y", '"+y')
vim.keymap.set("n", "P", '"+p')

-- Presentation mode
vim.keymap.set("n", "<leader>pp", function() require("functions.present").toggle() end, { silent = true })

-- Disable the stupid F1 key, that I seem to hit every time I push ESC
vim.keymap.set({"n", "v", "i", "s", "t"}, "<F1>", "<nop>", { noremap = true, silent = true })


