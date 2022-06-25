-- Configuration on LSP Service

local M ={}

M.setup_lsp = function (attach, capabilities)
  local lspconfig = require "lspconfig"
  local servers = {"clangd", "html", "cmake", "grammarly", "sumneko_lua", "prosemd_lsp", "ltex", "jedi_language_server"}

  for _,lsp in ipairs(servers) do
    lspconfig[lsp].setup{
      on_attach = attach,
      capabilities = capabilities,
    }
  end
end

return M

