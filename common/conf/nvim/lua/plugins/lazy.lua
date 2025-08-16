-- ~/.config/nvim/lua/plugins/lazy.lua

vim.g.maplocalleader = "\\"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- 加载插件列表（来自 plugins.plugins）
require("lazy").setup(require("plugins.plugins"))

require("plugins.options")
require("plugins.keymaps")
