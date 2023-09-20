return {
  {
    "gorbit99/codewindow.nvim",
    config = function()
      local codewindow = require "codewindow"
      codewindow.setup()
    end,
    keys = {
      { "<leader>sm", '<cmd>lua require("codewindow").toggle_minimap()<CR>', desc = "toggle minimap" },
      { "<leader>sf", '<cmd>lua require("codewindow").toggle_focus()<CR>', desc = "toggle focus" },
    },
  },
}
