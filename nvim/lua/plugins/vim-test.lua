-- Plugin to run tests from within vim
--
-- For cases where the tests need to be run within docker containers,
-- create a .nvim.lua file in the project root, and add
--
-- vim.g["test#<language>#<runner>#executable"] = "<command to launch>"
-- for instance
-- vim.g["test#ruby#rspec#executable"] = "docker run --rm -it -v $(pwd):/app -t modex-app bin/rspec"
--
--
return {
  "vim-test/vim-test",

  config = function()
    vim.keymap.set("n", "tf", ":TestFile<CR>")
    vim.keymap.set("n", "tt", ":TestLast<CR>")
    vim.keymap.set("n", "tn", ":TestNearest<CR>")
    vim.keymap.set("n", "ts", ":TestSuite<CR>")
  end

}
