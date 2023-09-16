return {
  {
    "sindrets/diffview.nvim",
    opts = {},
    event = "User AstroFile",
    keys = {
      { "<leader>v", desc = "Diffview" },
      { "<leader>vo", "<cmd>DiffviewOpen<cr>", desc = "Open DiffviewOpen" },
      { "<leader>vc", "<cmd>DiffviewClose<cr>", desc = "Open DiffviewClose" },
      { "<leader>vt", "<cmd>DiffviewToggleFiles<cr>", desc = "Open DiffviewToggleFiles" },
    },
  },
}
