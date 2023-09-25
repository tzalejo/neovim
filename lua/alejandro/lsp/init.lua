-- LSP configuration
local lspconfig = require "lspconfig"
local servers = require "alejandro.lsp.servers"

for server, setup in pairs(servers) do
    lspconfig[server].setup(setup())
end

-- install servers and tools
require "alejandro.lsp.mason"
require "alejandro.lsp.null-ls"
