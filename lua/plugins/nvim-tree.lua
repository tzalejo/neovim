return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            sort_by = "Alejandro",
            disable_netrw = false,
            hijack_netrw = true,
            -- open_on_setup = false,
            -- ignore_buffer_on_setup = false,
            -- ignore_ft_on_setup = {},
            auto_reload_on_write = true,
            hijack_cursor = false,
            update_cwd = false,
            hijack_unnamed_buffer_when_opening = false,
            open_on_tab = true, -- al hacer tab sobre el archivo me muestra, abriendolo.
            hijack_directories = {
                enable = true,
            },

            diagnostics = {
                enable = false,
                icons = {
                    hint = "",
                    info = "",
                    warning = "",
                    error = "",
                },
            },
            update_focused_file = {
                enable = true, -- muestra el archivo abierto en el arbol.
                update_cwd = false,
                ignore_list = {},
            },
            system_open = {
                cmd = nil,
                args = {},
            },
            filters = {
                dotfiles = false,
                custom = {},
            },
            git = {
                enable = true,
                ignore = true,
                timeout = 499,
            },
            view = {
                width = "19%",
                -- height                      = '19%',
                -- hide_root_folder = true, -- Para que no muestre la carpeta raiz.
                -- root_folder_label = false,
                side = "left",
                preserve_window_proportions = true,
                mappings = {
                    custom_only = false,
                    list = {},
                },
                number = false,
                relativenumber = false,
                signcolumn = "yes",
            },
            trash = {
                cmd = "trash",
                require_confirm = true,
            },
            log = {
                enable = true,
                truncate = false,
                types = {
                    all = false,
                    config = false,
                    copy_paste = false,
                    dev = false,
                    diagnostics = false,
                    git = false,
                    profile = false,
                    watcher = false,
                },
            },
            actions = {
                change_dir = {
                    enable = true,
                    global = false,
                },
                open_file = {
                    quit_on_open = false,
                    resize_window = false,
                    window_picker = {
                        enable = false,
                    },
                },
            },
        }
    end,
}
