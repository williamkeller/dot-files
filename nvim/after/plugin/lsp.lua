vim.lsp.set_log_level('debug')

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers

require'lspconfig'.solargraph.setup{}
require'lspconfig'.rubocop.setup{}
require'lspconfig'.sourcekit.setup{}
require'lspconfig'.rust_analyzer.setup{
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = true;
      }
    }
  }
}

