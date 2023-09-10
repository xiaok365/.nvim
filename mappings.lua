-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<C-d>"] = { "<C-d>zz", desc = "move down" },
    ["<C-u>"] = { "<C-u>zz", desc = "move up" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    -- ["<leader>y"] = { [["+y]] },
    -- ["<leader>x"] = { [["_d]] },
    ["<C-x>"] = { "dd" },
    ["d"] = { [["_d]] },
    -- ["<leader>Y"] = { [["+Y]] },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },
    ["<leader>a"] = {
      function() require("harpoon.mark").add_file() end,
      desc = "Add file to harpoon",
    },
    ["<leader>r"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
      desc = "List Harpoon file",
    },
    ["<C-j>"] = {
      function() require("harpoon.ui").nav_prev() end,
      desc = "Prev Harpoon file",
    },
    ["<C-k>"] = {
      function() require("harpoon.ui").nav_next() end,
      desc = "Next Harpoon file",
    },
    ["<Enter>"] = { [[o<ESC>]] },
    ["<S-Enter>"] = { [[O<ESC>]] },
    ["<leader>Y"] = { [[:%y+<CR><CR>]] },
    -- ["<leader>D"] = { [[:%d<CR>]] },
    ["<leader>D"] = { [[gg"_dG]] },
    ["<leader>V"] = { [[ggVG]] },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
    ["<C-x>"] = { "d" },
    ["d"] = { [["_d]] },
    ["p"] = { [["_dp]] },
    -- ["<leader>y"] = { [["+y]] },
    -- ["<leader>x"] = { [["_d]] },
  },
  x = {
    -- ["<leader>i"] = { [["_dP]] },
  },
  i = {
    ["<C-c>"] = { "<ESC>", desc = "ESC" },
  },
}
