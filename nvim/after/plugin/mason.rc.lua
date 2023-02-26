local status, mason = pcall(require, 'mason')
if (not status) then return end
local status2, lspconfig = pcall(require, 'mason-lspconfig')
if (not status2) then return end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

mason.setup {}
lspconfig.setup {
  ensure_installed = { 'tailwindcss' }
}

require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.emmet_ls.setup{
  capabilities = capabilities,
  filetypes = { "html" },
  init_options = {
    html = {
      options = {
     -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  }
}
require'lspconfig'.cssls.setup{
  capabilities = capabilities
}
