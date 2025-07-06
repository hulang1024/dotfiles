-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "
vim.opt.encoding = "utf-8"
vim.opt.number = true
-- 在窗口标题栏显示当前文件名
vim.opt.backup = false
vim.opt.title = true
vim.opt.visualbell = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.hlsearch = true
-- 禁止在屏幕宽度不够时自动换行
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
-- 新行自动继承上行的缩进
vim.opt.autoindent = true
-- 根据语法规则智能调整缩进
vim.opt.smartindent = true
-- 在行首按 Tab 时插入 shiftwidth 的空格，其他地方按 tabstop 规则
vim.opt.smarttab = true
-- 当一行文字被折行显示时，续行保持与首行相同的缩进
vim.opt.breakindent = true
vim.opt.mouse = ""
vim.opt.shell = "powershell"
