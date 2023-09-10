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
  {
    "Pocco81/auto-save.nvim",
    event = "User AstroFile",
    config = function() require("auto-save").setup() end,
    cmd = { "ASToggle" },
    keys = {
      { "<leader>i", "<cmd>ASToggle<cr>", desc = "Open AutoSave" },
    },
  },
  {
    "Civitasv/cmake-tools.nvim",
    opts = {},
    cmd = {
      "CMakeOpen",
      "CMakeClose",
      "CMakeGenerate",
      "CMakeBuild",
      "CMakeRun",
      "CMakeDebug",
      "CMakeClean",
      "CMakeStop",
    },
    keys = {
      { "<leader>j", desc = "CMake" },
      { "<leader>jo", "<cmd>CMakeOpen<cr>", desc = "CMakeOpen" },
      { "<leader>jc", "<cmd>CMakeClose<cr>", desc = "CMakeClose" },
      { "<leader>jb", "<cmd>CMakeBuild<cr>", desc = "CMakeBuild" },
      { "<leader>jr", "<cmd>CMakeRun<cr>", desc = "CMakeRun" },
      { "<leader>jd", "<cmd>CMakeDebug<cr>", desc = "CMakeDebug" },
    },
  },
}
