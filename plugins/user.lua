return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "folke/tokyonight.nvim",
    opts = {},
  },
  {
    "karb94/neoscroll.nvim",
    config = function() require("neoscroll").setup() end,
    event = "User AstroFile",
  },
  {
    "ThePrimeagen/harpoon",
    opts = {},
    event = "User AstroFile",
  },
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
