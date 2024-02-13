return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "go",
          "typescript",
          "javascript",
          "lua",
        },
        sync_install = false,
        indent = {
          enable = true,
        },
      })
    end,
  },
}
