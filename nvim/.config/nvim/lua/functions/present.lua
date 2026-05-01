local M = {}

local saved_cursorline = nil
local saved_hl = nil

function M.on()
  saved_cursorline = vim.opt.cursorline:get()
  saved_hl = vim.api.nvim_get_hl(0, { name = "CursorLine" })

  vim.opt.cursorline = true
  vim.api.nvim_set_hl(0, "CursorLine", {
    bg = "#C8A000",
    fg = "#1e1e2e",
    bold = true,
  })
end

function M.off()
  if saved_cursorline ~= nil then
    vim.opt.cursorline = saved_cursorline
    saved_cursorline = nil
  end

  vim.api.nvim_set_hl(0, "CursorLine", saved_hl or {})
  saved_hl = nil
end

function M.toggle()
  if saved_cursorline ~= nil then
    M.off()
  else
    M.on()
  end
end

vim.api.nvim_create_user_command("Present", function(opts)
  local arg = opts.args:lower()
  if arg == "on" then
    M.on()
  elseif arg == "off" then
    M.off()
  else
    vim.notify("Usage: Present on | Present off", vim.log.levels.WARN)
  end
end, {
  nargs = 1,
  complete = function()
    return { "on", "off" }
  end,
})

return M
