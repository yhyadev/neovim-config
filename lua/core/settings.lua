local opt = vim.opt
local g = vim.g
local o = vim.o

-- Tab/Indent
opt.smarttab = true
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Show Line Number
opt.number = true

-- Remove The Tilde (~) At The End Of Buffer
opt.fillchars = { eob = " " }

-- Enable Wrap (Because Iam Using Mobile)
opt.wrap = true

-- Enable Clipboard Copy/Paste
opt.clipboard = "unnamedplus"

-- Remove Highlight While Searching (/)
vim.opt.hlsearch = false
