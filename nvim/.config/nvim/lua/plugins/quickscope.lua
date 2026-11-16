return {
  {
    "unblevable/quick-scope",
    init = function()
      vim.g.qs_highlight_on_keys = { 'f', 'F', 't', 'T' }

      local function set_highlights()
        vim.api.nvim_set_hl(0, 'QuickScopePrimary', { fg = '#d78700', ctermfg = 172, underline = true })
        vim.api.nvim_set_hl(0, 'QuickScopeSecondary', { fg = '#d75f5f', ctermfg = 167, underline = true })
      end

      set_highlights()
      vim.api.nvim_create_autocmd('ColorScheme', {
        group = vim.api.nvim_create_augroup('qs_colors', { clear = true }),
        callback = set_highlights,
      })
    end,
  }
}
