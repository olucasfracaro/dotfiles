return {
    "andweeb/presence.nvim",

    config = function()
        require("presence").setup({
            auto_update = true,
            main_image = "neovim",
            neovim_image_text = "The One True Text Editor",

            editing_text = "Editando %s",
            file_explorer_text = "Explorando %s",
            git_commit_text = "Fazendo commit",
            plugin_manager_text = "Gerenciando plugins",
            reading_text = "Lendo %s",
            workspace_text = "Trabalhando em %s",

            show_time = true,
        })
    end,
}

