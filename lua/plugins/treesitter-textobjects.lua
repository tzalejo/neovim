return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "master",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    local move = require "nvim-treesitter.textobjects.move"
    local select = require "nvim-treesitter.textobjects.select"

    -- gf → salta al inicio de la próxima función
    -- gF → salta al inicio de la función anterior
    vim.keymap.set({ "n", "x", "o" }, "gf", function()
      move.goto_next_start("@function.outer", "textobjects")
    end, { desc = "Siguiente función" })
    vim.keymap.set({ "n", "x", "o" }, "gF", function()
      move.goto_previous_start("@function.outer", "textobjects")
    end, { desc = "Función anterior" })

    -- gm → salta al inicio de la próxima clase
    -- gM → salta al inicio de la clase anterior
    vim.keymap.set({ "n", "x", "o" }, "gm", function()
      move.goto_next_start("@class.outer", "textobjects")
    end, { desc = "Siguiente clase" })
    vim.keymap.set({ "n", "x", "o" }, "gM", function()
      move.goto_previous_start("@class.outer", "textobjects")
    end, { desc = "Clase anterior" })

    -- ga/gA: deshabilitados. Bug upstream en nvim-treesitter (rama master):
    -- la query de @parameter.* usa #make-range! con el capture "parameter.inner"
    -- (con punto), y query.lua busca esa clave como plana cuando en realidad
    -- se guarda anidada, así que siempre resuelve a nil y crashea tsrange.lua.
    -- Dejar "ga" libre además permite que vim-easy-align use su propio "ga".

    -- af → selecciona la función completa (firma + cuerpo). ej: vaf, daf(corta), yaf(copia)
    -- if → selecciona solo el cuerpo de la función. ej: vif, dif
    vim.keymap.set({ "x", "o" }, "af", function()
      select.select_textobject("@function.outer", "textobjects")
    end, { desc = "Toda la función" })
    vim.keymap.set({ "x", "o" }, "if", function()
      select.select_textobject("@function.inner", "textobjects")
    end, { desc = "Cuerpo de la función" })

    -- ac → selecciona la clase completa. ej: vac, dac
    -- ic → selecciona solo el cuerpo de la clase (sin la declaración). ej: vic
    vim.keymap.set({ "x", "o" }, "ac", function()
      select.select_textobject("@class.outer", "textobjects")
    end, { desc = "Toda la clase" })
    vim.keymap.set({ "x", "o" }, "ic", function()
      select.select_textobject("@class.inner", "textobjects")
    end, { desc = "Cuerpo de la clase" })

    -- aa/ia: deshabilitados por el mismo bug upstream que ga/gA (ver arriba).
  end,
}
