return {
  {
    "laytan/tailwind-sorter.nvim",
    enabled = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-lua/plenary.nvim",
    },
    build = "cd formatter && npm ci && npm run build",
    config = function()
      require("tailwind-sorter").setup({
        on_save_enabled = true,
        on_save_pattern = {"*.html", "*.jsx", "*.tsx", "*.templ"},
        trim_spaces = false,
      })
    end
  },
}
