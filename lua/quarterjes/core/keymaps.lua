vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap

keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<CR>", { desc = "Open a new tab" }) -- opens a new tab
keymap.set("n", "<leader><tab>d", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- closes current tab
keymap.set("n", "<leader><tab>]", "<cmd>tabn<CR>", { desc = "Go to next tab" }) -- go to next tab
keymap.set("n", "<leader><tab>[", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) -- go to previous tab

keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>wd", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<esc>", ":nohl<CR>", { remap = false, desc = "Remove search highlight" })
keymap.set("t", "<esc>", "<C-\\><C-n>", { remap = false, desc = "Exit out of terminal mode" })
