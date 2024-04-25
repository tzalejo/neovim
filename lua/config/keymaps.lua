vim.g.mapleader = " "

local keymap = vim.keymap --for consisenes

-- Mapping helper
local mapper = function(mode, key, result) vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true }) end

---------------------
-- TODO: General Keymaps
---------------------

-- Copy text to " register
mapper("n", "<leader>y", '"+y')
mapper("v", "<leader>y", '"+y')
mapper("n", "<leader>Y", '"+Y')

-- Copy file paths
mapper("n", "<leader>cp", '<cmd>let @+ = expand("%:p")<CR>') -- "Copy File Path"

--Reemplazar la palabra bajo el cursor en todo el buffer, como reenombrar
mapper("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Pegar sin sobrescribir el registro
mapper("v", "p", '"_dP')

--  borrar hacia atras del cursor
mapper("n", "dx", "vb_d")

-- seleecionar todo
mapper("n", "<C-a>", "gg<S-v>G")

-- Ordenar una lista
mapper("v", "<leader>oo", ":!sort<CR>")
-- vnoremap "<leader>or :!sort<CR>"

-- listar los Keymaps en telescope
-- mapper("n", "<leader>key", ":Telescope keymaps<CR>")

-- ver todo los archivos en la carpeta logs
mapper("n", "<Leader>log", ":Telescope find_files search_dirs={'./storage/logs'} no_ignore=true<CR>")

--ver diagnotico de la configuracion
mapper("n", "<leader>he", ":checkhealth<CR>") -- "Open .env file in a vertical split"

-- quick env file edit
mapper("n", "<leader>ee", ":vsp .env<CR>") -- "Open .env file in a vertical split"
mapper("n", "<leader>dc", ":vsp docker-compose.yml<CR>") -- "Open docker-compose file in a vertical split"

mapper("t", "<Esc><Esc>", "<C-\\><C-n>")

mapper("i", "jj", "<ESC>")

-- para que al eliminar un caracter no lo copie.
mapper("n", "x", '"_x')

-- para cerrar una ventana que tmb se puede hacer con leader + q
mapper("n", "<Leader>sx", ":close<CR>")

-- Git messenger
mapper("n", "<Leader>gm", "<Plug>(git-messenger)<CR>")

-- Para recargar un archivo de forma manual
-- mapper("n", "<Leader>s", ":so<CR>")

-- Para desplazarno en una linea
mapper("n", "<A-h>", "0")
mapper("n", "<A-l>", "$")

-- Save and Close
mapper("n", "<Leader>w", ":w!<CR>")
mapper("n", "<Leader>q", ":q<CR>")
mapper("n", "mq", ":qa!<CR>")
mapper("n", "qq", ":q!<CR>")

mapper("n", "<esc>", ":noh<return><esc>")

-- Duplitcate Line
mapper("n", "tt", ":t.<CR>")

-- comentar codigo
-- mapper("n", "cc", "<Plug>kommentary_line_default")
mapper("n", "gc", "<Plug>kommentary_visual_default<C-c>")

mapper("n", "<Leader>to", ":TodoTelescope<CR>")

-- Busqueda en un archivo
-- Hop.nvim
mapper("n", "f", ":HopWord<CR>")
mapper("n", "F", ":HopPattern<CR>")
mapper("n", "ff", ":HopChar2<CR>") -- busqueda con dos letras

-- Menu desplegable NERDTree
mapper("n", "<Leader>nt", ":NvimTreeOpen<CR>")
mapper("n", "<Leader>nn", ":NvimTreeClose<CR>")
--mapper("n", "<Leader>nu", ":NvimTreeRefresh<CR>")

-- Redimensiono las ventanas arriba, abajo, izquierda y derecha
mapper("n", "<C-Up>", ":resize -2<CR>")
mapper("n", "<C-Down>", ":resize +2<CR>")
mapper("n", "<C-Left>", ":vertical resize +2<CR>")
mapper("n", "<C-Right>", ":vertical resize -2<CR>")

--Agregar ventana
mapper("n", "<Leader>va", ":split<CR>") -- ventana arriba
mapper("n", "<Leader>vi", ":vsplit<CR>") -- ventana izquierda

-- Cerrar una buffer
-- mapper("n", "<C-w>", ":Bdelete<CR>")

-- Telescope
-- mapper("n", "<Leader>pr", ":Telescope treesitter<CR>")
-- mapper("n", "<Leader>fs", ":Telescope live_grep<CR>")
-- mapper("n", "<Leader>gst", ":Telescope git_status<CR>")
-- mapper("n", "<Leader>gcm", ":Telescope git_commits<CR>")
-- mapper("n", "<Leader>pw", ":Telescope grep_word<CR>")
