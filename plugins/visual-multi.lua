return {
  {
    "mg979/vim-visual-multi",
    event = "User AstroFile",
    keys = {
      { "<leader>sd", "<cmd>call vm#commands#add_cursor_down(0, v:count1)<cr>", desc = "move down vertically" },
      { "<leader>su", "<cmd>call vm#commands#add_cursor_up(0, v:count1)<cr>", desc = "move up vertically" },
    },
  },
}
