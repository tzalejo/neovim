vim.g.mapleader = " "

local keymap = vim.keymap --for consisenes

-- Mapping helper
local mapper = function(mode, key, result) vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true }) end

---------------------
-- TODO: General Keymaps
---------------------

mapper("n", "<leader>Sl", "<cmd>SessionManager! load_last_session<cr>")
mapper("n", "<leader>Ss", "<cmd>SessionManager! save_current_session<cr>")
mapper("n", "<leader>Sd", "<cmd>SessionManager! delete_session<cr>")
mapper("n", "<leader>Sf", "<cmd>sessionmanager! load_session<cr>")
mapper("n", "<leader>S.", "<cmd>SessionManager! load_current_dir_session<cr>")
-- Para guardar todo los archivos
mapper("n", "<leader>W", ":wa<CR>")

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
mapper("n", "<leader>key", ":Telescope keymaps<CR>")

-- ver todo los archivos en la carpeta logs
mapper("n", "<Leader>log", ":Telescope find_files search_dirs={'./storage/logs'} no_ignore=true<CR>")

--ver diagnotico de la configuracion
mapper("n", "<leader>he", ":checkhealth<CR>") -- "Open .env file in a vertical split"

-- quick env file edit
mapper("n", "<leader>ee", ":vsp .env<CR>") -- "Open .env file in a vertical split"

mapper("t", "<Esc><Esc>", "<C-\\><C-n>")

mapper("i", "jj", "<ESC>")

-- para que al eliminar un caracter no lo copie.
mapper("n", "x", '"_x')

-- para cerrar una ventana que tmb se puede hacer con leader + q
mapper("n", "<Leader>sx", ":close<CR>")

-- Git messenger
mapper("n", "<Leader>gm", "<Plug>(git-messenger)<CR>")
mapper("n", "<Leader>go", ":Gitsigns toggle_current_line_blame<CR>")
mapper("n", "<Leader>gn", ":Gitsigns next_hunk<CR>") -- movernos entre cambios de git
mapper("n", "<Leader>gp", ":Gitsigns preview_hunk<CR>") -- vista de los cambios
mapper("n", "<Leader>gr", ":Gitsigns reset_hunk<CR>") -- descarta el hunk bajo el cursor
mapper("n", "<Leader>gR", ":Gitsigns reset_buffer<CR>") -- descarta todos los cambios del archivo
mapper("n", "<Leader>gW", ":Gitsigns reset_buffer<CR>:noautocmd write<CR>") -- descarta cambios y guarda sin formatter
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

-- Redefine Ctrl+s to save with the custom function
mapper("n", "<C-s>", ":lua SaveFile()<CR>")

-- Custom save function
function SaveFile()
  -- Check if a buffer with a file is open
  if vim.fn.empty(vim.fn.expand "%:t") == 1 then
    vim.notify("No file to save", vim.log.levels.WARN)
    return
  end

  local filename = vim.fn.expand "%:t" -- Get only the filename
  local success, err = pcall(function()
    vim.cmd "silent! write" -- Try to save the file without showing the default message
  end)

  if success then
    vim.notify(filename .. " Saved!") -- Show only the custom message if successful
  else
    vim.notify("Error: " .. err, vim.log.levels.ERROR) -- Show the error message if it fails
  end
end
