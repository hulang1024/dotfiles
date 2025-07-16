-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- Disable LazyVim Global keymaps
unmap("n", "H")
unmap("n", "L")

map({ "n", "v" }, "<A-CR>", vim.lsp.buf.code_action, { desc = "Show Code Context Actions" })

map({ "n", "v" }, "<Leader>a", "ggVG", { desc = "Select All" })
