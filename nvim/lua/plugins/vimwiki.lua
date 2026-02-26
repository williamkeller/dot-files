return {
  "vimwiki/vimwiki",

  -- Need to use init instead of config, because the paths need to because
  -- set before the plugin loads.
  init = function()
    vim.g.vimwiki_list = {
      {
        -- personal wiki
        syntax = 'markdown',
        ext = 'md',
        path = '~/Documents/vimwiki/personal',
      },
      {
        -- work wiki
        syntax = 'markdown',
        ext = 'md',
        path = '~/Documents/vimwiki/work'
      }
    }
  end,

  config = function()
  end
}
