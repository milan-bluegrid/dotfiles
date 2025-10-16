return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim", -- UI framework (required)
        "rcarriga/nvim-notify", -- Optional: pretty notifications
    },
    config = function()
        require("noice").setup({
            cmdline = {
                enabled = true, -- enables the command-line UI
                view = "cmdline_popup", -- options: "cmdline", "cmdline_popup", "cmdline_input"
                format = {
                    cmdline = { pattern = "^:", icon = "", lang = "vim" },
                    search_down = { kind = "search", pattern = "^/", icon = "", lang = "regex" },
                    search_up = { kind = "search", pattern = "^%?", icon = "", lang = "regex" },
                    filter = { pattern = "^:%s*!%s*", icon = "", lang = "bash" },
                    lua = { pattern = "^:%s*lua%s+", icon = "", lang = "lua" },
                    help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
                },
            },

            messages = {
                enabled = true, -- replaces the default message UI
                view = "notify", -- send messages to nvim-notify
            },

            popupmenu = {
                enabled = true, -- command-line completions in a popup menu
                backend = "nui", -- use NUI for rendering
            },

            lsp = {
                progress = { enabled = true }, -- LSP progress messages
                hover = { enabled = true }, -- LSP hover docs
                signature = { enabled = true }, -- LSP signature help
                message = { enabled = true }, -- LSP notifications
            },

            presets = {
                bottom_search = false, -- use popup for search
                command_palette = true, -- position cmdline and popupmenu together
                long_message_to_split = true, -- long messages go to split window
                inc_rename = false, -- optional integration with inc-rename.nvim
                lsp_doc_border = true, -- add borders to hover docs
            },
        })

        -- Optional: setup nvim-notify for consistent popups
        local notify = require("notify")
        notify.setup({
            background_colour = "#000000",
            stages = "fade_in_slide_out",
            timeout = 3000,
        })
        vim.notify = notify
    end,
}
