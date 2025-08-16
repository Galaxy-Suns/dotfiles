-- 这里进行插件的设置

-- tokyonignt
vim.cmd[[colorscheme tokyonight-night]]

-- lualine
require('lualine').setup {
  options = { theme  = 'tokyonight-night' },
}

-- nvim-tree
-- 默认不开启
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- nvim-treesitter
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { 
      "c", 
      "lua", 
      "vim", 
      "bash", 
      "cpp", 
      "markdown", 
      "python", 
      "html", 
      "kotlin", 
      "java", 
      "javascript", 
      "make",
      "cmake",
      "nginx",
      "ini",
      "yaml",
      "rust",
      "css"
    },

  highlight = { enable = true },
}

-- rainbow_delimiters
vim.g.rainbow_delimiters = {
    strategy = {
        [''] = 'rainbow-delimiters.strategy.global',
        vim = 'rainbow-delimiters.strategy.local',
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    priority = {
        [''] = 110,
        lua = 210,
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}
