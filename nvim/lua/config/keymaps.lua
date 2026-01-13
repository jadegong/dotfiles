-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- files
vim.keymap.set("n", "<leader>fs", "<cmd>w<cr><esc>", { desc = "Save File" })
vim.keymap.set("n", "<leader>fS", "<cmd>wa<cr><esc>", { desc = "Save All" })
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

-- buffers
vim.keymap.set("n", "<leader>bb", ":lua Snacks.picker.buffers()<cr>", { desc = "Buffers" })
vim.keymap.set(
  "n",
  "<leader>bB",
  ":lua Snacks.picker.buffers({ hidden = true, nofile = true })<cr>",
  { desc = "Buffers(All)" }
)
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bx", "<cmd>bd<cr>", { desc = "Delete Buffer and Window" })

-- 使用数字进行window跳转
vim.keymap.set("n", "<leader>1", '<cmd>exe 1 .. "wincmd w"<CR>', { desc = "Window 1" })
vim.keymap.set("n", "<leader>2", '<cmd>exe 2 .. "wincmd w"<CR>', { desc = "Window 2" })
vim.keymap.set("n", "<leader>3", '<cmd>exe 3 .. "wincmd w"<CR>', { desc = "Window 3" })
vim.keymap.set("n", "<leader>4", '<cmd>exe 4 .. "wincmd w"<CR>', { desc = "Window 4" })
vim.keymap.set("n", "<leader>5", '<cmd>exe 5 .. "wincmd w"<CR>', { desc = "Window 5" })
vim.keymap.set("n", "<leader>6", '<cmd>exe 6 .. "wincmd w"<CR>', { desc = "Window 6" })
vim.keymap.set("n", "<leader>7", '<cmd>exe 7 .. "wincmd w"<CR>', { desc = "Window 7" })
vim.keymap.set("n", "<leader>8", '<cmd>exe 8 .. "wincmd w"<CR>', { desc = "Window 8" })
vim.keymap.set("n", "<leader>9", '<cmd>exe 9 .. "wincmd w"<CR>', { desc = "Window 9" })
