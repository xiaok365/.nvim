return {
  "nvim-pack/nvim-spectre",
  event = "User AstroFile",
  keys = {
    { "<leader>ss", '<cmd>lua require("spectre").toggle()<CR>', desc = "Toggle Spectre" },
    {
      "<leader>sw",
      '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
      desc = "Search current word",
    },
    { mode = "v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', desc = "Search current word" },
    {
      "<leader>sp",
      '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
      desc = "Search on current file",
    },
    {
      "<leader>sr",
      "<cmd>lua require('spectre.actions').run_current_replace()<CR>",
      desc = "replace current line",
    },
    {
      "<leader>sR",
      "<cmd>lua require('spectre.actions').run_replace()<CR>",
      desc = "replace all",
    },
  },
}
