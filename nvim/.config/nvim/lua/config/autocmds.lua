vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = vim.fn.expand("~") .. "/vimwiki/diary/*.md",
  callback = function(args)
    local output = vim.fn.system({ "daily" })
    local lines = vim.split(output, "\n", { trimempty = true })
    vim.api.nvim_buf_set_lines(args.buf, 0, 0, false, lines)
  end,
})


