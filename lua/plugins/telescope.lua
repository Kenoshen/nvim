return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "plenary",
    },
    config = function()
      -- fuzy finder (telescope)
      vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
      vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
      vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
      vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
      vim.keymap.set("n", "<leader>fr", "<cmd>Telescope resume<cr>")
    end,
  },
}
