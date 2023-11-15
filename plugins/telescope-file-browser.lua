return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    event = "User AstroFile",
    config = function()
      require("telescope").setup {
        extensions = {
          file_browser = {
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
              ["i"] = {
                -- your custom insert mode mappings
              },
              ["n"] = {
                -- your custom normal mode mappings
              },
            },
          },
        },
      }
      require("telescope").load_extension "file_browser"
    end,
    keys = {
      {
        "<leader>fi",
        ":Telescope file_browser<CR>",
        -- "<cmd>Telescope file_browser<CR>",
        desc = "Open File browser",
      },
      {
        "<leader>fl",
        -- '<cmd>lua require "telescope".extensions.file_browser.file_browser path=%:p:h select_buffer=true<CR>',
        ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
        desc = "Open File browser current buffer",
      },
    },
  },
}
