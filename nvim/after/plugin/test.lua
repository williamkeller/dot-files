

-- vim.g['test#strategy'] = 'neovim'
--
-- Remaps
vim.keymap.set("n", "tf", vim.cmd.TestFile)
vim.keymap.set("n", "tt", vim.cmd.TestLast)
vim.keymap.set("n", "ts", vim.cmd.TestSuite)
vim.keymap.set("n", "tn", vim.cmd.TestNearest)
