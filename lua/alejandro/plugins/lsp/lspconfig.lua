-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

-- import typescript plugin safely
local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
	return
end

local keymap = vim.keymap -- for conciseness

local on_attach = function(client, bufnr)
	-- keybind options
	local opts = { noremap = true, silent = true, buffer = bufnr }

	keymap.set("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opts) -- Un buscador para mostrar la definicion, la referencia y la implementacion
	keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- Funciona como el comando de VSCode, pero te muestra en una ventana flotante
	keymap.set("n", "gi", "<cmd>Lspsaga goto_definition<CR>", opts) -- Salta a la definicion de la palabra sobre el cursor

	-- keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
	keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
	-- keymap.set("n", "<leader>dl", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	-- keymap.set("n", "<leader>dc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	keymap.set("n", "<leader>db", "<cmd>Lspsaga show_buf_diagnostics<CR>", opts) -- Muestra el diagnostico
	-- keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	keymap.set("n", ",d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor

	keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts) -- see outline on right hand side
	keymap.set("n", "<C-t>", "<cmd>Lspsaga term_toggle<CR>", opts) -- Abro una terminal, para cerrarla hay q escribir exit
	-- keymap.set("n", "<C-x>", "<cmd>Lspsaga close_floaterm<CR>", opts) -- see outline on right hand side
	-- typescript specific keymaps (e.g. rename file and update imports)

	if client.name == "tsserver" then
		keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>") -- Renombro el archivo
		keymap.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>") -- Organiza los imports
		keymap.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>") -- Elimino las variables que no se usaron.
	end
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Change the Diagnostic symbols in the sign column (gutter)
-- (not in youtube nvim video)
local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- configure lua_ls server
lspconfig["lua_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- configure intelephense server
lspconfig["intelephense"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- configure quick_lint_js server
lspconfig["quick_lint_js"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- configure eslint server
lspconfig["eslint"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- configure html server
lspconfig["html"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- configure typescript server with plugin
typescript.setup({
	server = {
		capabilities = capabilities,
		on_attach = on_attach,
	},
})

-- configure css server
lspconfig["cssls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- configure tailwindcss server
lspconfig["tailwindcss"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- configure emmet language server
lspconfig["emmet_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
})

-- configure lua server (with special settings)
lspconfig["lua_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = { -- custom settings for lua
		Lua = {
			-- make the language server recognize "vim" global
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- make language server aware of runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})