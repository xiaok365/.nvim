return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    keys = {
      { "<leader>fT", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
}
