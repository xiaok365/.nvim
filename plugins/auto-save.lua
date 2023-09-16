return {
  {
    "Pocco81/auto-save.nvim",
    event = "User AstroFile",
    config = function() require("auto-save").setup() end,
    cmd = { "ASToggle" },
    keys = {
      { "<leader>uA", "<cmd>ASToggle<cr>", desc = "Open AutoSave" },
    },
  },
}
