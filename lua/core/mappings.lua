local g = vim.g
local keymap = vim.keymap.set

-- Set The MaoLeader
g.mapleader = " "

-- Save/Close File
keymap("n", "<C-s>", "<cmd>w <cr>")
keymap("n", "<C-q>", "<cmd>q <cr>")

-- Format
keymap("n", "<leader>fm", vim.lsp.buf.format)

-- Show Code Actions
keymap("n", "<leader>ca", vim.lsp.buf.code_action)

-- Jump To Definition
keymap("n", "<leader>gd", vim.lsp.buf.definition)

-- Command Line Shortcut
keymap("n", "<leader>;", ":")

-- Rename faster with lsp
keymap("n", "<leader>r", vim.lsp.buf.rename)
