return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "main",
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

    -- ga → salta al próximo argumento de función
    -- gA → salta al argumento anterior
    vim.keymap.set({ "n", "x", "o" }, "ga", function()
      move.goto_next_start("@parameter.inner", "textobjects")
    end, { desc = "Siguiente argumento" })
    vim.keymap.set({ "n", "x", "o" }, "gA", function()
      move.goto_previous_start("@parameter.inner", "textobjects")
    end, { desc = "Argumento anterior" })

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

    -- aa → selecciona el argumento incluyendo la coma. ej: daa elimina el argumento limpiamente
    -- ia → selecciona solo el valor del argumento, sin la coma. ej: cia reemplaza el argumento
    vim.keymap.set({ "x", "o" }, "aa", function()
      select.select_textobject("@parameter.outer", "textobjects")
    end, { desc = "Argumento con coma" })
    vim.keymap.set({ "x", "o" }, "ia", function()
      select.select_textobject("@parameter.inner", "textobjects")
    end, { desc = "Solo el argumento" })
  end,
}
