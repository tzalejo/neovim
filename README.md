# Configuracion

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

## Mappings

### General Mappings

| Action                      | Mappings     |
| --------------------------- | ------------ |
| Leader                      | key Space    |
| Local Leader key            | ,            |
| Resize up                   | Ctrl + Up    |
| Resize Down                 | Ctrl + Down  |
| Resize Left                 | Ctrl + Left  |
| Resize Right                | Ctrl + Right |
| Up Window                   | Ctrl + k     |
| Down Window                 | Ctrl + j     |
| Left Window                 | Ctrl + h     |
| Right Window                | Ctrl + l     |
| Force Write                 | Ctrl + s     |
| Force Quit                  | Ctrl + q     |
| New File                    | Leader + n   |
| Close Buffer                | Leader + c   |
| Next Tab (real vim tab)     | ]t           |
| Previous Tab (real vim tab) | [t           |
| Comment                     | Leader + \/  |
| Horizontal Split            | \\           |
| Vertical Split              | \|           |
| Alterar pliegue             | za           |
| Reducir todo los pliegues   | zr           |
| Aplicar todo los pliegues   | zm           |

### Laravel

| Action                 | Mappings    |
| ---------------------- | ----------- |
| Listar menu de Laravel | Leader + ll |
| Laravel artisan        | Leader + lt |
| Laravel router         | Leader + le |
| Laravel commands       | Leader + lc |
| Laravel resources      | Leader + lo |
| Laravel panel          | Leader + lp |
| Laravel document       | Leader + lo |
| Laravel make           | Leader + lm |

### Buffers

| Action                                                              | Mappings      |
| ------------------------------------------------------------------- | ------------- |
| Next Buffer                                                         | ]b            |
| Previous Buffer                                                     | [b            |
| Move Buffer Right                                                   | >b            |
| Move Buffer Left                                                    | <b            |
| Navigate to buffer tab with interactive picker                      | Leader + bb   |
| Close all buffers except the current                                | Leader + bc   |
| Close all buffers                                                   | Leader + bC   |
| Delete a buffer tab with interactive picker                         | Leader + bd   |
| Close all buffers to the left of the current                        | Leader + bl   |
| Go to the previous buffer                                           | Leader + bp   |
| Close all buffers to the right of the current                       | Leader + br   |
| Sort buffers by extension                                           | Leader + bse  |
| Sort buffers by buffer number                                       | Leader + bsi  |
| Sort buffers by last modification                                   | Leader + bsm  |
| Sort buffers by full path                                           | Leader + bsp  |
| Sort buffers by relative path                                       | Leader + bsr  |
| Open a buffer tab in a new horizontal split with interactive picker | Leader + b\\  |
| Open a buffer tab in a new vertical split with interactive picker   | Leader + b \| |

### Better Escape

| Action     | Mappings |
| ---------- | -------- |
| Escape key | jj, jk   |

### Completion

| Action                                 | Mappings                            |
| -------------------------------------- | ----------------------------------- |
| Open completion menu                   | Ctrl + Space                        |
| Select completion                      | Enter                               |
| Next snippet location                  | Tab                                 |
| Previous snippet location @Shift + Tab |
| Next completion                        | Down, Ctrl + n, Ctrl + j, Tab       |
| Previous completion                    | Up, Ctrl + p, Ctrl + k, Shift + Tab |
| Cancel completion                      | Ctrl + e                            |
| Scroll up completion docs              | Ctrl + u                            |
| Scroll down completion docs            | Ctrl + d                            |

### Neo-Tree

| Action         | Mappings   |
| -------------- | ---------- |
| Neotree toggle | Leader + e |
| Neotree focus  | Leader + o |

### Dashboard Mappings

| Action           | Mappings   |
| ---------------- | ---------- |
| Dashboard (Home) | Leader + h |

### Session Manager Mappings

| Action                         | Mappings    |
| ------------------------------ | ----------- |
| Save Session                   | Leader + Ss |
| Last Session                   | Leader + Sl |
| Delete Session                 | Leader + Sd |
| Delete Directory Session       | Leader + SD |
| Search Sessions                | Leader + Sf |
| Search Directory Sessions      | Leader + SF |
| Load Current Directory Session | Leader + S. |

### Package Management Mappings

| Action                    | Mappings    |
| ------------------------- | ----------- |
| Update Lazy and Mason     | Leader + pa |
| Plugins Install           | Leader + pi |
| Mason Installer           | Leader + pm |
| Mason Updater             | Leader + pM |
| Plugins Status            | Leader + ps |
| Plugins Sync              | Leader + pS |
| Plugins Check for Updates | Leader + pu |
| Plugins Update            | Leader + pU |

### LSP Mappings

| Action               | Mappings        |
| -------------------- | --------------- |
| LSP Info             | Leader + li     |
| None-ls Info         | Leader + lI     |
| Hover Document       | K               |
| Format Document      | Leader + lf     |
| Symbols Outline      | Leader + lS     |
| Line Diagnostics     | gl, Leader + ld |
| All Diagnostics      | Leader + lD     |
| Code Actions         | Leader + la     |
| Signature Help       | Leader + lh     |
| Rename               | Leader + lr     |
| Document Symbols     | Leader + ls     |
| Workspace Symbols    | Leader + lG     |
| Diagnostic Next      | ]d              |
| Diagnostics Previous | [d              |
| Declaration          | gD              |
| Type Definition      | gy              |
| Definition           | gd              |
| Implementation       | gI              |
| References           | gr, Leader + lR |

### Debugger Mappings

| Action                  | Mappings               |
| ----------------------- | ---------------------- |
| Start/Continue Debugger | Leader + dc or <F5>    |
| Pause Debugger          | Leader + dp or <F6>    |
| Restart Debugger        | Leader + dr or <C-F5>  |
| Run Debugger to Cursor  | Leader + ds            |
| Close Debugger Session  | Leader + dq            |
| Terminate Debugger      | Leader + dQ or <S-F5>  |
| Toggle Breakpoint       | Leader + db or <F9>    |
| Conditional Breakpoint  | Leader + dC or <S-F9>  |
| Clear Breakpoints       | Leader + dB            |
| Step Over               | Leader + do or <F10>   |
| Step Into               | Leader + di or <F11>   |
| Step Out                | Leader + dO or <S-F11> |
| Evaluate Expression     | Leader + dE            |
| Toggle REPL             | Leader + dR            |
| Toggle Debugger UI      | Leader + du            |
| Debugger Hover          | Leader + dh            |

### Telescope Mappings

| Action                            | Mappings    |
| --------------------------------- | ----------- |
| Marks                             | Leader + f' |
| Buffers                           | Leader + fb |
| Word at cursor                    | Leader + fc |
| Commands                          | Leader + fC |
| Find files                        | Leader + ff |
| Find files (include hidden files) | Leader + fF |
| Help Tags                         | Leader + fh |
| Keymaps                           | Leader + fk |
| Man Pages                         | Leader + fm |
| Notifications                     | Leader + fn |
| Old Files                         | Leader + fo |
| Registers                         | Leader + fr |
| Colorschemes                      | Leader + ft |
| Live Grep                         | Leader + fw |
| Live Grep (include hidden files)  | Leader + fW |
| Git Branches                      | Leader + gb |
| Git Commits (repository)          | Leader + gc |
| Git Commits (current file)        | Leader + gC |
| Git Status                        | Leader + gt |
| Git Pull                          | Leader + ga |
| Git Previous hunk                 | Leader + gp |
| LSP Symbols                       | Leader + ls |
| LSP Workspace Symbols             | Leader + lG |

### Terminal Mappings

| Action                   | Mappings            |
| ------------------------ | ------------------- |
| Open Floating Terminal   | Leader + tf or <F7> |
| Open Horizontal Terminal | Leader + th         |
| Open Vertical Terminal   | Leader + tv         |
| Open Toggle Lazygit      | Leader + tl         |
| Open Toggle node         | Leader + tn         |
| Open Toggle Python       | Leader + tp         |
| Open Toggle btm          | Leader + tt         |

### UI/UX Mappings

| Action                                 | Mappings     |
| -------------------------------------- | ------------ |
| Toggle autopairs                       | Leader + ua  |
| Toggle automatic root detection        | Leader + uA  |
| Toggle background                      | Leader + ub  |
| Toggle autocompletion (buffer)         | Leader + uc  |
| Toggle autocompletion (global)         | Leader + uC  |
| Toggle diagnostics                     | Leader + ud  |
| Dismiss notifications                  | Leader + uD  |
| Toggle autoformatting (buffer)         | Leader + uf  |
| Toggle autoformatting (global)         | Leader + uF  |
| Toggle signcolumn                      | Leader + ug  |
| Toggle foldcolumn                      | Leader + u>  |
| Toggle LSP inlay hints (buffer)        | Leader + uh  |
| Toggle indent setting                  | Leader + ui  |
| Toggle indent guides                   | Leader + u\| |
| Toggle statusline                      | Leader + ul  |
| Toggle CodeLens                        | Leader + uL  |
| Change line numbering                  | Leader + un  |
| Toggle notifications                   | Leader + uN  |
| Toggle paste mode                      | Leader + up  |
| Toggle reference highlighting (buffer) | Leader + ur  |
| Toggle reference highlighting (global) | Leader + uR  |
| Toggle spellcheck                      | Leader + us  |
| Toggle conceal                         | Leader + uS  |
| Toggle tabline                         | Leader + ut  |
| Toggle URL highlighting                | Leader + uu  |
| Toggle wrap                            | Leader + uw  |
| Toggle syntax highlighting (buffer)    | Leader + uy  |
| Toggle LSP semantic tokens (buffer)    | Leader + uY  |
| Toggle color highlighting              | Leader + uz  |

# Comandos mios

## Treesitter Text Objects

Navegación semántica del código usando la sintaxis del árbol (treesitter).
Los comandos de movimiento también funcionan como operadores (ej: `dgf` borra hasta la próxima función).

### Movimiento (modo normal)

| Action                                 | Mappings |
| -------------------------------------- | -------- |
| Salta al inicio de la próxima función  | gf       |
| Salta al inicio de la función anterior | gF       |
| Salta al inicio de la próxima clase    | gm       |
| Salta al inicio de la clase anterior   | gM       |
| Salta al próximo argumento de función  | ga       |
| Salta al argumento anterior            | gA       |

### Selección (modo visual / operador)

Se combinan con operadores: `v` (seleccionar), `d` (borrar), `y` (copiar), `c` (cambiar).
Ejemplos: `vaf` selecciona la función, `daa` elimina un argumento limpiamente, `cia` reemplaza el valor de un argumento.

| Action                            | Mappings |
| --------------------------------- | -------- |
| Función completa (firma + cuerpo) | af       |
| Solo el cuerpo de la función      | if       |
| Clase completa                    | ac       |
| Solo el cuerpo de la clase        | ic       |
| Argumento incluyendo la coma      | aa       |
| Solo el valor del argumento       | ia       |

### Comandos básicos: movimiento, inserción y borrado

| Action                                                                                              | Mappings |
| --------------------------------------------------------------------------------------------------- | -------- |
| Borrar el caracter bajo el cursor (equivale a la tecla Del/Supr).                                   | x        |
| Borrar el caracter a la izquierda del cursor (equivale a la tecla Borrar/Backspace).                | X        |
| Borrar el caracter a la izquierda del cursor (equivale a la tecla Borrar/Backspace).                | J        |
| Borrar el caracter a la izquierda del cursor (equivale a la tecla Borrar/Backspace).                | u        |
| Rehacer la última acción (Redo). Si lo pulsamos más veces reharemos acciones posteriores deshechas. | CTRL+R   |
| Activamos el modo reemplazar texto                                                                  | SHF+R    |
| Insertar texto en la siguiente posición tras el cursor (Append). Es similar a i, salvo que          | a        |
| el texto no se inserta en la posición actual del cursor sino a su derecha.                          |          |
| Poner el cursor al final de la línea y pasar a modo inserción (añadir texto al final).              | A        |
| Crear una línea vacía, en blanco, bajo la línea actual, y pasar a modo inserción con el cursor      | o        |
| posicionado en dicha línea. Es mucho más cómodo que (como en otros editores) tener que              |          |
| pulsar FIN y ENTER para crear una línea en blanco.                                                  |          |

## Buscar y reemplazar

| Action                                                                                               | Mappings                   |
| ---------------------------------------------------------------------------------------------------- | -------------------------- |
| Remplaza todas las palabras que contienen geek por Geek en todo un documento sin pedir confirmación. | :%s/geek/Geek              |
| Reemplaza todas las palabras que contienen geekland por Geekland solo en la línea actual.            | :s/geekland/Geekland       |
| Remplaza todas las palabras que contienen Geek por ubuntu/scripts usando el                          | :%s!Geek!ubuntu/scripts!gi |
| delimitador !. Al usar la opción i no se distingue entre mayúsculas y minúsculas. Para distinguir    |                            |
| entre mayúsculas y minúsculas tendríamos que usar I.                                                 |                            |

## Movimientos

| Action                                                                                                | Mappings |
| ----------------------------------------------------------------------------------------------------- | -------- |
| Para moverno a la definicion de la constante en el mismo archivo.                                     | gd       |
| Para moverno a la definicion pero otro archivo.                                                       | gi       |
| Para navegar(entre archivos o definiciones) al anterior pila(recordar que las navegaciones se apilan) | ctrl+o   |
| Para navegar(entre archivos o definiciones) al siguiente pila                                         | ctrl+i   |
| Para buscar a continuacion escribir la palabra a buscar para abajo o para arriba(?)                   | / o ?    |
| Tecla 'n' en es para buscar la siguiente aparicion                                                    |          |
| Movernos hacia arriba en bloque                                                                       | ctrl+u   |
| Movernos hacia abajo en bloque                                                                        | ctrl+d   |
| Centrar el cursos en la pantalla                                                                      | zzz      |
| Movemos hacia abajo @=numero                                                                          | @+j      |
| Movemos hacia arriba @=numero                                                                         | @+k      |
| Nos movemos al final de la linea.                                                                     | shif+$   |
| Ir al inicio del documento.                                                                           | gg       |
| Ir al final del documento.                                                                            | shif+g   |

## Modo Visual( -> tecla de direccion )

| Action                                                           | Mappings |
| ---------------------------------------------------------------- | -------- |
| Cambiamos al modo visual (para seleccionar se suele usar)        | v        |
| Vamos seleccionando de izq a der (tambien ctrl+shift+l)          | CTRL+->  |
| Selecciona todo un parrafo(lo que esta entre espacios en blanco) | vip      |
| Corto todo el parrafo                                            | dip      |
| Copio todo el parrafo                                            | yip      |

## Copiar y pegar

| Action                                                                 | Mappings    |
| ---------------------------------------------------------------------- | ----------- |
| Copiamos el texto seleccionado                                         | y           |
| Copiamos toda la linea                                                 | yy          |
| Pegamos el texto seleccionado en la linea de abajo                     | p           |
| Pegamos el texto en la linea de arriba                                 | shif+p      |
| Borrar desde la posición actual del cursor hasta el final de la línea. | D           |
| Copia la palabra actual                                                | yiw         |
| Pegamos estando en modo insertar.                                      | ctrl+shif+v |
| Si queremos copiar un div en html copia todo el contenido.             | yat         |

## forma de borrar

| Action                                                                                                           | Mappings |
| ---------------------------------------------------------------------------------------------------------------- | -------- |
| Corto(borrar no existe) la línea actual (sobre la que está el cursor).                                           | dd       |
| Borrar el contenido del parentesis                                                                               | di(      |
| Borrar el contenido del llaves                                                                                   | di{      |
| Borrar el contenido del corchete                                                                                 | di[      |
| Borra hasta el caracter inclusive                                                                                | df\*     |
| Borra hasta el caracter sin este                                                                                 | dt\*     |
| Corta(borra) la palabra actual                                                                                   | diw      |
| Cortar(borra) todo lo que comienza desde la posición donde el cursor se coloca hasta el comienzo de otra palabra | dw       |

# html

| Action                                              | Mappings |
| --------------------------------------------------- | -------- |
| Para eliminar un parrafo en html osea una etiqueta. | dat      |
| Para eliminar el continido de una etiqueta en html  | dit      |

## Forma de escribir en bloque varias lienas a la vez, en 3 pasos

| Action                                                                                              | Mappings |
| --------------------------------------------------------------------------------------------------- | -------- |
| Cambiamos visual bloque y nos desplazamos hacia abajo(o arriba dependiendo hacia dnd quiere copiar) | Ctrl+V   |
| Permitira escribir lo que queremos agregar en toda las lienas                                       | Shif+i   |
| Nos copiara el texto escrito en todas las lineas.                                                   | Esc      |

## Forma de reemplazar un caracter por ejemplo " => '

| Action                                          | Mappings |
| ----------------------------------------------- | -------- |
| Reemplazamos, en este caso, el caracter " por ' | cs"'     |

## Para comentar codigo

| Action                | Mappings |
| --------------------- | -------- |
| Comenta una linea     | cc       |
| Comenta varias lienas | gc       |

## Para tabular y alinear

| Action                                                        | Mappings |
| ------------------------------------------------------------- | -------- |
| Alinea todo el parrafo a partir, en este caso, a partir de => | gaip=>   |

## La manipulación del fichero (abrir, guardar, salir): Los comandos básicos a la hora de editar ficheros son

| Action                                                                                               | Mappings |
| ---------------------------------------------------------------------------------------------------- | -------- |
| Grabar los cambios del fichero actual.                                                               | :w       |
| Salir del editor sin grabar ningún cambio en el fichero actual (descartando cualquier cosa que       | :q!      |
| hayamos hecho desde su apertura o última vez que grabamos).                                          |          |
| Salir del editor grabando los cambios en el fichero actual. También sirve :x o :wq!.                 | ZZ       |
| Obtener información en la barra de estado del nombre del fichero que estamos editando, línea actual, | CTRL+G   |
| número de líneas, en qué porcentaje del fichero estamos, y número de columna.                        |          |
| Realizo una busqueda de archivos desde la consola.                                                   | :Files   |

## NerdTree (\_ significa espacio en blanco)

| Action                                                      | Mappings |
| ----------------------------------------------------------- | -------- |
| Para abrir ventana de arbolito(f2 y f3 tambien lo hacen)    | \_nt     |
| Para ver el menu de NERDTREE(estando en la parte del arbol) | m        |
| Para mover el cursor a la ventana derecha                   | ctrl+h   |
| Para mover el cursor a la ventana izquierda                 | ctrl+l   |
| Para ver la keymapper configurados                          | \_key    |

## SessionManager

| Action                                                                                                                 | Mappings    |
| ---------------------------------------------------------------------------------------------------------------------- | ----------- |
| load_session: Selecciona y carga la sesión. (Tu sesión actual no aparecerá en la lista de forma predeterminada;        |             |
| consulta la configuración a continuación).                                                                             | Leader + Sf |
| load_last_session: Elimina todos los búferes e intenta :source de la última sesión guardada. Devuelve "true"           |             |
| si se restauró la sesión y "false" en caso contrario.                                                                  | Leader + Sl |
| load_current_dir_session: Elimina todos los búferes e intenta obtener la última sesión guardada del directorio         |             |
| actual. Devuelve "true" si se restauró la sesión y "false" en caso contrario.                                          | Leader + S. |
| save_current_session: Funciona como :mksession, pero guarda/crea el directorio actual como una sesión en sessions_dir. | Leader + Ss |
| delete_session: Seleccionar y eliminar sesión.                                                                         | Leader + Sd |
