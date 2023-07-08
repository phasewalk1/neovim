local function extend_with(server_name, filetypes)
  local config = require('plugins.configs.lspconfig')
  local on_attach = config.on_attach
  local capabilities = config.capabilities
  local lspconfig = require('lspconfig')

  lspconfig[server_name].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = filetypes,
  })
end

extend_with('pyright', {'python'})
extend_with('rust_analyzer', {'rust'})
extend_with('tsserver', {'typescript'})