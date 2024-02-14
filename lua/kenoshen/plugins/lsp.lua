return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { 
          "gopls",
          "bashls",
          "cssls",
          "dockerls",
          "eslint",
          "graphql",
          "html",
          "htmx",
          "haxe_language_server",
          "jsonls",
          "tsserver",
          "lua_ls",
          "marksman",
          "sqls",
          "tailwindcss",
          "lemminx",
          "yamlls",
        },
      })
    end,
  },
}
