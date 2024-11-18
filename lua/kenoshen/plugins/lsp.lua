return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "j-hui/fidget.nvim",
    },
    config = function()
      require("fidget").setup()
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
        handlers = {
          function(server_name) -- default handler
            require("lspconfig")[server_name].setup({})
          end,
          ["lua_ls"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
              settings = {
                Lua = {
                  diagnostics = {
                    globals = { "vim" },
                  },
                },
              },
            })
          end,
          ["gopls"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.gopls.setup({
              cmd = {"gopls"},
              filetypes = {"go", "gomod", "gowork", "gotmpl"},
              settings = {
                gopls = {
                  completeUnimported = true,
                  usePlaceholders = true,
                  analyses = {
                    unusedparams = true,
                  },
                  semanticTokens = true,
                },
              },
            })
          end,
          ["graphql"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.graphql.setup({
              cmd = {"graphql-lsp"},
              filetypes = {"graphql"},
            })
          end,
          ["htmx-lsp"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.htmx.setup{}
          end,
        }
      })

      -- setup compy?
      local cmp = require("cmp")
      local cmp_select = {behavior = cmp.SelectBehavior.Select}
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          --["<S-Tab>"] = cmp.mapping.select_prev_item(cmp_select),
          --["<Tab>"] = cmp.mapping.select_next_item(cmp_select),
          ["<Enter>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
          ["<Tab>"] = cmp.mapping(function(fallback)
            -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
            if cmp.visible() then
              local entry = cmp.get_selected_entry()
              if not entry then
                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
              else
                cmp.confirm()
              end
            else
              fallback()
            end
          end, {"i","s","c",}),
        }),
        sources = cmp.config.sources(
          {
            { name = "nvim_lsp" },
            { name = "luasnip" },
          }, {
            { name = "buffer" },
          }
        ),
      })

      -- call diagnostic
      vim.diagnostic.config({
        update_in_insert = true,
        float = {
          focusable = false,
          style = "minimal",
          border = "rounded",
          source = "always",
          header = "",
          prefix = "",
        },
      })
    end,
  },
}
