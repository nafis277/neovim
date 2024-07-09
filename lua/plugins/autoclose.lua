return {
    'm4xshen/autoclose.nvim',
    config = function()
        require("autoclose").setup({
            keys = {
                ["'"] = {escape = false, close = false, pair = "''"},
                ['$'] = { escape = true, close = true, pair = '$$' },
            },
        })
    end
}
