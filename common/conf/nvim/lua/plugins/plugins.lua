-- 这里 引入插件

return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }, 
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        "christoomey/vim-tmux-navigator"
    },
    {
        "https://gitlab.com/HiPhish/rainbow-delimiters.nvim",
        dependencies = { 'nvim-treesitter/nvim-treesitter' }
    }
}
