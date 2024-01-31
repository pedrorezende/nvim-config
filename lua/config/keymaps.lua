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

-- Split Window
keymaps.set("n", "ss", ":split<Return>")
keymaps.set("n", "sv", ":vsplit<Return>")

-- Move around
keymaps.set("n", "<C-h>", "<C-w>h")
keymaps.set("n", "<C-j>", "<C-w>j")
keymaps.set("n", "<C-k>", "<C-w>k")
keymaps.set("n", "<C-l>", "<C-w>l")

-- keymaps.set("n", "st", ":tabedit<Return>", opts)
-- keymaps.set("n", "<tab>", ":tabnext<Return>")
-- keymaps.set("n", "<s-tab>", ":tabprev<Return>")

-- Reload configs
keymaps.set("n", "<leader>r", ":so %<CR>")

-- Close buffer
keymaps.set("n", "sd", ":bd<CR>")

-- Leave insert mode
keymaps.set("i", "kk", "<Esc>")
