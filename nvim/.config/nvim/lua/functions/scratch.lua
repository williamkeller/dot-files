vim.api.nvim_create_user_command("Scratch", function()
  vim.cmd("new")
  vim.bo.buftype = "nofile"
  vim.bo.bufhidden = "hide"
  vim.bo.swapfile = false
end, {})
