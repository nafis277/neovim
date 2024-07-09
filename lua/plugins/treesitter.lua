return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ensure_installed = {"markdown","xml", "lua", "html","css","java","matlab","python", "c", "latex","make", "c_sharp", "cpp", "bash"},
            highlight = {
                enable = true,
                disable = {"latex"},
                additional_vim_regex_highlighting = { "latex", "markdown" },

            },
            indent = { enable = true },
        })
    end
}

