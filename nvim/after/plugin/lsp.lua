vim.lsp.set_log_level('debug')

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers

local lspconfig = require('lspconfig')

lspconfig.ruby_lsp.setup({
  init_options = { 
    formatter = 'standard',
    linters = { 'standard' }
  }
})
-- lspconfig.solargraph.setup{}
lspconfig.rubocop.setup{}
lspconfig.sourcekit.setup{}
lspconfig.rust_analyzer.setup{
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = true;
      }
    }
  }
}
