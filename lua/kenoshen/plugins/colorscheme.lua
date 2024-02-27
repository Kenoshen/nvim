return {
  "rktjmp/lush.nvim",
  {
    "kenoshen/intellij-dark.nvim",
    name = "intellij-dark",
    dir = "~/Documents/intellij-dark.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "doums/darcula",
  },
  {
    "rockyzhang24/arctic.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
    config = function()
      vim.cmd("colorscheme arctic")
    end,
  },
  {
    "santos-gabriel-dario/darcula-solid.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "adisen99/codeschool.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "npxbr/gruvbox.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "olimorris/onedark.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "casonadams/walh",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "ntk148v/habamax.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "folke/tokyonight.nvim",
  },
}
