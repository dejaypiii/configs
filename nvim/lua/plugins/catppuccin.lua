require("catppuccin").setup({
    flavour = "frappe", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "frappe",
        dark = "frappe",
    },
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
    transparent_background = false,
    term_colors = true,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    styles = {
        comments = { "italic" },
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})
