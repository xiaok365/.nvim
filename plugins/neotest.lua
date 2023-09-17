return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-go",
      "andy-bell101/neotest-java",
    },
    config = function()
      -- get neotest namespace (api call creates or returns namespace)
      local neotest_ns = vim.api.nvim_create_namespace "neotest"
      vim.diagnostic.config({
        virtual_text = {
          format = function(diagnostic)
            local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
            return message
          end,
        },
      }, neotest_ns)
      require("neotest").setup {
        adapters = {
          require "neotest-go",
          require "neotest-java",
        },
      }
    end,
    keys = {
      { "<leader>xr", '<cmd>lua require("neotest").run.run()<cr>', desc = "run" },
      { "<leader>xf", '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>', desc = "run current file" },
      { "<leader>xd", '<cmd>lua require("neotest").run.run({strategy = "dap"})<cr>', desc = "debug" },
      { "<leader>xs", '<cmd>lua require("neotest").run.stop()<cr>', desc = "stop" },
      { "<leader>xa", '<cmd>lua require("neotest").run.attach()<cr>', desc = "attach" },
      { "<leader>xw", '<cmd>lua require("neotest").watch.toggle()<cr>', desc = "toggle watch" },
      { "<leader>xo", '<cmd>lua require("neotest").output.open({ enter = true })<cr>', desc = "output" },
      { "<leader>xp", '<cmd>lua require("neotest").output_panel.toggle()<cr>', desc = "toggle panel" },
      { "<leader>xm", '<cmd>lua require("neotest").summary.toggle()<cr>', desc = "toggle summary" },
    },
  },
}
