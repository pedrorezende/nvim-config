-- Keymaps aremautomatically loadem on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
--
local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment / Decrement
keymaps.set("n", "+", "<C-a>")
keymaps.set("n", "-", "<C-x>")

-- Select all
keymaps.set("n", "<C-a>", "gg<S-v>G")

-- Close buffer
keymaps.set("n", "<C+w>d", ":bd<CR>")

-- Move around
keymaps.set("n", "<C-h>", "<C-w>h")
keymaps.set("n", "<C-j>", "<C-w>j")
keymaps.set("n", "<C-k>", "<C-w>k")
keymaps.set("n", "<C-l>", "<C-w>l")

-- Reload configs
keymaps.set("n", "<leader>r", ":so %<CR>")

-- Leave insert mode
keymaps.set("i", "kk", "<Esc>")
keymaps.set("i", "jj", "<Esc>")

-- Adding line without leaving normal mode
keymaps.set("n", "zo", "o<Esc>k")
keymaps.set("n", "zO", "O<Esc>j")
