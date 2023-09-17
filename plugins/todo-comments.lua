return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
      { "<leader>fT", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
}
