-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.guifont = { "MonaspiceXeNerdFontMono", "h14" }
opt.conceallevel = 1
opt.termguicolors = true
opt.clipboard = "unnamed,unnamedplus"
opt.smartindent = true
opt.wrap = false

vim.o.termguicolors = true
vim.o.background = "dark"
