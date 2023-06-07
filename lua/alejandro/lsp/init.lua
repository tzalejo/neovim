-- LSP configuration

-- install servers and tools
require("alejandro.lsp.mason")

local lspconfig = require("lspconfig")
local servers = require("alejandro.lsp.servers")

for server, setup in pairs(servers) do
	lspconfig[server].setup(setup())
end

require("alejandro.lsp.null-ls")
