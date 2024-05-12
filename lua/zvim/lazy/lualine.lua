return {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    enabled = true,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("lualine").setup({
            theme = "auto",
            disabled_filetype = {
                "neo-tree",
                "NvimTree",
                "startify",
                "dashboard"
            },
        })
    end,
}
