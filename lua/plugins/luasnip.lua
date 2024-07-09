return {
    "L3MON4D3/LuaSnip",
    dependencies = {
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
    },
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    config = function()
        require("luasnip").config.set_config({ -- Setting LuaSnip config

            -- Enable autotriggered snippets
            enable_autosnippets = true,
            update_events = 'TextChanged,TextChangedI',

        })

    end
}
