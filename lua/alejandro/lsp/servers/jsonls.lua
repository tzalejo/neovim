local lsp_attach = require "alejandro.lsp.attach"
local lsp_flags = require "alejandro.lsp.flags"

return function(ops)
    local config = {
        on_attach = lsp_attach,
        flags = lsp_flags,
    }
    if vim.fn.executable "json-languageserver" == 1 then
        config.cmd = { "json-languageserver", "--stdio" }
    end

    return vim.tbl_extend("force", config, ops)
end
