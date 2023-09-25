--[[ local mason = require "mason"
local mason_lspconfig = require "mason-lspconfig"
local servers = require "alejandro.lsp.servers"
local lspconfig = require "lspconfig"

mason.setup {
    PATH = "prepend",
}

local mason_servers = {}

--can be improve checking the setup function to see if sets the cmd
for server, _ in pairs(servers) do
    local cmd = lspconfig[server].document_config.default_config.cmd[1]
    if vim.fn.executable(cmd) == 0 then
        table.insert(mason_servers, server)
    end
end

mason_lspconfig.setup {
    ensure_installed = mason_servers,
}

-- filter the list for the ones not globally installed
require("mason-tool-installer").setup {
    ensure_installed = require "alejandro.lsp.tools",
} ]]

local mason_lspconfig = require "mason-lspconfig"
local servers = require "alejandro.lsp.servers"
local lspconfig = require "lspconfig"

local mason_servers = {}

for server, _ in pairs(servers) do
  local cmd = lspconfig[server].cmd[1]
  if vim.fn.executable(cmd) == 0 then
    table.insert(mason_servers, server)
  end
end

mason_lspconfig.setup {
  -- ensure_installed = mason_servers,
}

-- filter the list for the ones not globally installed
require("mason-tool-installer").setup {
  ensure_installed = vim.tbl_filter(function (tool)
    return vim.fn.executable(tool) == 0
  end, require "alejandro.lsp.tools"),
}


