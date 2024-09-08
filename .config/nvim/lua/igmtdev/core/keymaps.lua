vim.g.mapleader = " "

-- Set the "vim.keymap" to "keymap" variable
local keymap = vim.keymap

-- Exit Insert Mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Remove Search Text Highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Increment/Decrement Numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment Number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement Number" })

-- Window Management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Split Equal Size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open New Tab" }) -- Open New Tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Current Tab" }) -- Close Current Tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to Next Tab" }) -- Go to Next Tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to Previous Tab" }) -- Go to Previous Tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open Current Buffer in New Tab" }) --  Move Current Buffer to New Tab
