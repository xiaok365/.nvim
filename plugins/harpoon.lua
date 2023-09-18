return {
  {
    "ThePrimeagen/harpoon",
    keys = {
      { "<leader>ha", '<cmd>lua require("harpoon.mark").add_file()<cr>', desc = "Add file to harpoon" },
      { "<leader>hr", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', desc = "List harpoon file" },
      { "<C-z>", '<cmd>lua require("harpoon.ui").nav_prev()<cr>', desc = "Prev harpoon file" },
      { "<C-p>", '<cmd>lua require("harpoon.ui").nav_next()<cr>', desc = "Next harpoon file" },
    },
  },
}
