return {
  'stevearc/oil.nvim',
  opts = {
    keymaps = {
      ["<C-h>"] = false,
      ["<C-l>"] = false,
    },
    win_options = {
      winbar = "%{v:lua.require('oil').get_current_dir()}",
    },
  },
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  lazy = false,
}
