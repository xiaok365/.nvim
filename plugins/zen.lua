return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      width = 0.8,
    },
    plugins = {
      tmux = { enabled = true }, -- disables the tmux statusline
    },
  },
  keys = {
    { "zn", "<cmd>ZenMode<CR>", desc = "ZenMode" },
  },
}
