return {
  {
    "janko/vim-test",

    config = function()
      vim.keymap.set("n", "tf", ":TestFile<cr>")
      vim.keymap.set("n", "tt", ":TestLast<cr>")
      vim.keymap.set("n", "tn", ":TestNearest<cr>")
      vim.keymap.set("n", "ts", ":TestSuite<cr>")
    end
  }
}
