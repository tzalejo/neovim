-- Para mejora los tiempos de carga 
pcall(require, 'impatient')

-- Para que si al iniciar vim no esta instalado packer, se instale automaticamente.
if require 'script.first_load'() then
  return
end

-- Sane Settings
require('settings')
-- Extra funcionality and plugins
require('keymappings')
-- A lot of nice Plugins
require('plugins')
-- Language Server Provider
require('lsp')

-- FIX Error en ele init, revisar!
