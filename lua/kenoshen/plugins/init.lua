return {
  {
    "nvim-lua/plenary.nvim",
    name = "plenary",
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    config = function()
      vim.cmd("colorscheme tokyonight")
    end,
  },
  "folke/which-key.nvim",
  "nvim-tree/nvim-web-devicons",
}
