-- 主键
vim.g.mapleader = " "

local km = vim.keymap

-- 多行移动
km.set("v", "J", ":m '>+1<CR>gv=gv") 
km.set("v", "K", ":m '<-2<CR>gv=gv") 

-- 窗口分割
km.set("n", "<leader>\\", "<C-w>v")
km.set("n", "<leader>-", "<C-w>s")

-- 取消高亮
km.set("n", "<leader>#", ":nohl<CR>")

-- 打开终端
km.set("n", "<C-M>", "<C-w>s:terminal<CR>i")

-- 从终端模式退出
km.set("t", "<Esc>", "<C-\\><C-n>")
