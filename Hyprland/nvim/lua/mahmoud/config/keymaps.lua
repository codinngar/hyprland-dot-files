vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })
keymap.set("n", "<leader>a", "ggVG", { noremap = true, silent = true })

-- Quick save and exit
keymap.set("n", "<leader>w", "<cmd>w<CR>", { silent = true, desc = "Save file" })
keymap.set("n", "<leader>q", "<cmd>q<CR>", { silent = true, desc = "Quit file" })

-- Type commands quickly with ;
-- keymap.set({ "n", "x" }, ";", ":")

-- Quit all opened buffers
keymap.set("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Quit Neovim" })

-- Go to start or end of line easier
-- keymap.set({ "n", "x" }, "H", "^")
-- keymap.set({ "n", "x" }, "L", "g_")

-- Change text without putting it into the vim register
-- keymap.set("n", "c", '"_c')
-- keymap.set("n", "C", '"_C')
-- keymap.set("n", "d", '"_d')
-- keymap.set("n", "D", '"_D')
-- keymap.set("n", "x", '"_x')
-- keymap.set("n", "X", '"_X')

-- Move lines up and down
keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==", { silent = true, desc = "Move one line down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==", { silent = true, desc = "Move one line up" })
keymap.set("v", "<A-j>", "<cmd>m '>+1<CR>gv=gv", { silent = true, desc = "Move multible lines down" })
keymap.set("v", "<A-k>", "<cmd>m '<-2<CR>gv=gv", { silent = true, desc = "Move multible lines up" })

-- Split windows
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })

-- Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current file in new tab" })

-- Navigation between splits
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Navigate left" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Navigate left" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Navigate left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Navigate left" })

-- Resize splits with Ctrl + Arrow keys
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })
