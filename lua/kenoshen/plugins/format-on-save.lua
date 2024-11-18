return {
  {
    "elentok/format-on-save.nvim",
    config = function()
      local formatters = require("format-on-save.formatters")
      require("format-on-save").setup({
        exclude_path_patterns = {
          "/node_modules/",
          ".local/share/nvim/lazy",
        },
        formatter_by_ft = {
          go = {
            -- formatters.shell({
            --   cmd = { "gofmt" },
            -- }),
            formatters.shell({
              cmd = { "goimports-reviser", "-rm-unused", "-set-alias", "-format", "%" },
              tempfile = function()
                return vim.fn.expand("%") .. '.formatter-temp'
              end
            }),
          },
          ts = {
            formatters.shell({
              cmd = { "pwd" },
              tempfile = function()
                return vim.fn.expand("%") .. '.formatter-temp'
              end
            }),
          },
        },
        fallback_formatter = {
          formatters.remove_trailing_whitespace,
          formatters.remove_trailing_newlines,
          -- prettierd throws errors all the time
          -- formatters.prettierd,
        },
      })
    end,
  },
}
