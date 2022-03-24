# Check [UltiRequiem/UltiVim](https://github.com/UltiRequiem/UltiVim)

# UltiVim

A Neovim configuration using sane defaults, native LSP and snippets.

![image](https://user-images.githubusercontent.com/71897736/119695257-9d70bf00-be13-11eb-82f7-f5b0aa17179d.png)
![image](https://user-images.githubusercontent.com/71897736/119695197-90ec6680-be13-11eb-8ba7-623c5c6cf31c.png)

If you are using Vim instead of Neovim, although I really don't know why,
you may be interested in my [ftplugin](./ftplugin). Everything else is written in Lua.

The configuration of my whole system is [here](https://github.com/UltiRequiem/dotfiles).

If you find any errors or have any suggestions, it would be great if you do a pull request or an [issue](https://github.com/UltiRequiem/UltiVim/issues/new)!

## Other cool configurations
- [LunarVim](https://github.com/ChristianChiarulli/LunarVim): It helped me a lot to configure the LSP
- [Kuator](https://github.com/kuator/nvim): A lot of cool stuff
- [Elianiva](https://github.com/elianiva/dotfiles/tree/master/nvim)
- [Glepnir](https://github.com/glepnir/nvim)

If you think your configuration is cool, make a pull request and include it!

### License
See [LICENSE](./LICENSE).

### Neovim

Por supuesto, debemos tener instalado Neovim con soporte para python, si no lo tienes aún, lo puedes instalar de la siguiente manera:

$ sudo apt-get install neovim python3-neovim

### Nerdfont (Tipo de Letra)

Para poder visualizar los iconos en la terminal es necesario tener un tipo de letra que lo soporte, en lo personal a mi me gustan las Nerdfonts.

Puedes descargar DejaVuSansMono Nerd Font. url: https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DejaVuSansMono.zip

Una vez que hayas descargado el archivo, descomprimelo y copia los archivos (*.ttf) al siguiente directorio:

$HOME/.local/share/fonts/

Si por alguna razón no tienes el directorio, lo puedes crear.

Ya que hayas copiado los archivos, para poder utilizar este nuevo tipo de letra, debes ejecutar:

$ fc-cache -fv


### Instalar coc url: https://github.com/neoclide/coc.nvim/wiki/Language-servers

curl -sL install-node.vercel.app/lts | bashi

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Install extensions like:

:CocInstall coc-json coc-tsserver coc-html (https://github.com/neoclide/coc-html)

Crear archivo de configuracion(coc-setting.json):

:CocConfig  

