vim.g.mapleader = " "
-- open the file explorer
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- save the file with leader instead of :
vim.keymap.set("n", "<leader>ww", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>s", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>")
vim.keymap.set("n", "<leader>wa", "<cmd>wqa<cr>")
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>qa", "<cmd>qa<cr>")

-- fuzy finder (telescope)
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
