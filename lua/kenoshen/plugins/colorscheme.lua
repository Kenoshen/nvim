return {
  "rktjmp/lush.nvim",
  {
    "kenoshen/intellij-dark.nvim",
    name = "intellij-dark",
    dir = "~/Documents/intellij-dark.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
    config = function()
      vim.cmd("colorscheme intellij-dark")
    end,
  },
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
  {
    "folke/tokyonight.nvim",
  },
}
