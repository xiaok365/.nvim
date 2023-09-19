return {
  {
    "sindrets/diffview.nvim",
    keys = {
      { "<leader>vo", "<cmd>DiffviewOpen<cr>", desc = "Open DiffviewOpen" },
      { "<leader>vc", "<cmd>DiffviewClose<cr>", desc = "Open DiffviewClose" },
      { "<leader>vt", "<cmd>DiffviewToggleFiles<cr>", desc = "Open DiffviewToggleFiles" },
      { "<leader>vf", "<cmd>DiffviewFocusFiles<cr>", desc = "Focus panel" },
      { "<leader>vh", "<cmd>DiffviewFileHistory<cr>", desc = "current branch history" },
      { "<leader>vp", "<cmd>DiffviewFileHistory %<cr>", desc = "current file history" },
      { "<leader>vr", "<cmd>DiffviewRefresh<cr>", desc = "refresh" },
    },
  },
}
