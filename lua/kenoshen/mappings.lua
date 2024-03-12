-- GENERAL MAPPINGS

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>tt", "<cmd>colorscheme intellij-dark<cr>")

-- open the file explorer (this is the default until nvim-tree overrides this to use tree instead of default file explorer)
vim.keymap.set("n", "<leader>e", "<cmd>Ex<cr>")

-- save the file with leader instead of :
vim.keymap.set("n", "<leader>ww", "<cmd>wa<cr>")
vim.keymap.set("n", "<leader>s", "<cmd>wa<cr>")
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>")
vim.keymap.set("n", "<leader>wa", "<cmd>wqa<cr>")
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>qa", "<cmd>qa<cr>")

-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- get rid of the 's' command
vim.keymap.set("n", "s", "<nop>")

-- allow quick find and replace of currently highlighted text
vim.keymap.set("v", "<leader>tr", "\"hy:%s/<C-r>h//gc<left><left><left>")

-- set to 2 spaces
vim.o.expandtab=true
vim.o.smartindent=true
vim.o.tabstop=2
vim.o.shiftwidth=2

-- AU Group (no idea what that is, but it is apparently important)
local augroup = vim.api.nvim_create_augroup
local MyGroup = augroup("MyGroup", {})
local autocmd = vim.api.nvim_create_autocmd

-- keymappings for lsp
autocmd("LspAttach", {
  group = MyGroup,
  callback = function(e)
    local opts = { buffer = e.buf }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.open_float() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  end,
})
