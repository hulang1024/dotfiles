-- Options are automatically loaded before lazy.nstartup
-- Default options that are always set: https://github.com/LazyLazyblob/main/lua/lazyconfig/options.lua
-- Add any additional options here
local opt = vim.opt
local g = vim.g

g.mapleader = " "

opt.encoding = "utf-8"
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"

-- 在窗口标题栏显示当前文件名
opt.backup = false
opt.title = true
opt.visualbell = true
opt.clipboard = "unnamedplus"

opt.showcmd = true
opt.cmdheight = 1

opt.hlsearch = true
opt.smartcase = true
opt.ignorecase = true

opt.splitbelow = true
opt.splitright = true

-- 禁止在屏幕宽度不够时自动换行
opt.wrap = false
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
-- 新行自动继承上行的缩进
opt.autoindent = true
-- 根据语法规则智能调整缩进
opt.smartindent = true
-- 在行首按 Tab 时插入 shiftwidth 的空格，其他地方按 tabstop 规则
opt.smarttab = true
-- 当一行文字被折行显示时，续行保持与首行相同的缩进
opt.breakindent = true
