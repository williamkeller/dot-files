vim.api.nvim_create_user_command('Todo', function(opts)
  local task = opts.args
  if task == '' then
    vim.notify('Usage: :Todo <task>', vim.log.levels.WARN)
    return
  end
  local result = vim.fn.system({ 'todo.sh', 'add', task })
  vim.notify(vim.trim(result), vim.log.levels.INFO)
end, { nargs = '+', desc = 'Add a task via todo.sh' })
