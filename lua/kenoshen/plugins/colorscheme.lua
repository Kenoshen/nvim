return {
  {
    "folke/tokyonight.nvim",
    config = function()
      vim.cmd("colorscheme tokyonight")
    end,
  },
  "rktjmp/lush.nvim",
  {
    "doums/darcula",
  },
  {
    "rockyzhang24/arctic.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "santos-gabriel-dario/darcula-solid.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
}
