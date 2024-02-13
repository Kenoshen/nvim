local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		config = function()
			vim.cmd("colorscheme tokyonight")
		end,
	},
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	"folke/which-key.nvim",
	"folke/neodev.nvim",
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	"mbbill/undotree",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
})
