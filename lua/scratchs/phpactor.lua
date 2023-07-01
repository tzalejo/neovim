vim.keymap.set("n", "<leader>tk", function()
    vim.ui.select({
        "class_inflect",
        "context_menu",
        "expand_class",
        "generate_accessor",
        "change_visibility",
        "copy_class",
        "import_class",
        "import_missing_classes",
        "move_class",
        "navigate",
        "new_class",
        "transform",
        "update",
        "config",
        "status",
        "cache_clear",
    }, {
        prompt = "PhpActor Action",
    }, function(choice)
        if choice == nil or choice == "" then
            return
        end

        if choice == "new_class" then
            return vim.ui.input({
                prompt = "New Class",
            }, function(value)
                require("phpactor").rpc("new_class", { current_path = vim.fn.getcwd() ..  "/app/" .. value ..".php"})
            end)
        end

        require("phpactor").rpc(choice, {})
    end)
end)
