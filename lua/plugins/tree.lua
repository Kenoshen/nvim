return {
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      -- if nvim-tree is loaded, replace the command to open up the filetree
      vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

      -- disable netrw at the very start of your init.lua
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- optionally enable 24-bit colour
      vim.opt.termguicolors = true

      -- empty setup using defaults
      require("nvim-tree").setup({
        actions = {
          open_file = {
            quit_on_open = true,
          },
        },
      })
    end,
  },
}
