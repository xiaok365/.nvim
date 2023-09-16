return {
  {
    "Pocco81/auto-save.nvim",
    event = "User AstroFile",
    config = function() require("auto-save").setup() end,
    cmd = { "ASToggle" },
    keys = {
      { "<leader>i", "<cmd>ASToggle<cr>", desc = "Open AutoSave" },
    },
  },
}
