-- GENERAL MAPPINGS

vim.g.mapleader = " "

-- open the file explorer (this is the default until nvim-tree overrides this to use tree instead of default file explorer)
vim.keymap.set("n", "<leader>e", "<cmd>Ex<cr>")

-- save the file with leader instead of :
vim.keymap.set("n", "<leader>ww", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>s", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>")
vim.keymap.set("n", "<leader>wa", "<cmd>wqa<cr>")
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>qa", "<cmd>qa<cr>")


-- set to 2 spaces
vim.o.expandtab=true
vim.o.smartindent=true
vim.o.tabstop=2
vim.o.shiftwidth=2
