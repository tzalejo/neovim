return {
    "anuvyklack/animation.nvim",
    dependencies = {
        "anuvyklack/middleclass",
    },
    keys = {
        {
            "<leader>aa",
            function()
                require("alejandro.animations").redraw_buffer()
            end,
        },
    },
}
