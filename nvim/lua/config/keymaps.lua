-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_next, { desc = "Goto the next diagnostic found in the file" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { desc = "Goto the prev diagnostic found in the file" })

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
