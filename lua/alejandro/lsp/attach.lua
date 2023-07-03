local telescope_mapper = require "alejandro.telescope.mappings"

local filetype_attach = setmetatable({}, {
    __index = function()
        return function() end
    end,
})
return function(client, bufnr)
    local filetype = vim.api.nvim_buf_get_option(0, "filetype")
    -- TODO: keymaps for lsp
    vim.keymap.set(
        "n",
        "K",
        vim.lsp.buf.hover,
        { buffer = 0, desc = "LSP Help information of symbol under the cursor" }
    )
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, { buffer = 0, desc = "LSP Rename symbol under cursor" })
    vim.keymap.set("i", "<leader>he", vim.lsp.buf.signature_help, { buffer = 0, desc = "LSP Signature help" })
    vim.keymap.set("n", "<leader>vo", ":LspRestart<cr>", { noremap = true, desc = "LSP Restart Server" })
    vim.keymap.set({ "n", "v" }, "<leader>vca", vim.lsp.buf.code_action, { buffer = 0, desc = "LSP Code actions" })
    vim.keymap.set("n", "<leader>vf", function()
        return vim.lsp.buf.format {
            async = true,
            filter = function(cli)
                return cli.name ~= "lua_ls"
            end,
        }
    end, { buffer = 0, desc = "LSP format file" })

    telescope_mapper("gr", "lsp_references", { buffer = true, desc = "LSP References of symbol on cursor" }) -- INFO: ir a la referencia
    telescope_mapper("<leader>pv", "find_symbol", { buffer = true, desc = "LSP find symbol on the project" }) -- INFO: ver funciones y variables del file
    telescope_mapper("<leader>pd", "lsp_document_symbols", { buffer = true, desc = "LSP document symbols" }) -- INFO: nombre d funciones en el doc
    telescope_mapper("gi", "lsp_definitions", { buffer = true, desc = "LSP go to definition" }) -- INFO: ir a la definicion

    vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"

    -- Attach any filetype specific options to the client
    filetype_attach[filetype](client, bufnr)
end
