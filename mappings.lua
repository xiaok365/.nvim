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
    -- ["<leader>b"] = { name = "Buffers" },
    -- ["<leader>v"] = { name = "Diffview", desc = "Diffview" },
    -- ["<leader>h"] = { name = "Harpoon", desc = "Harpoon" },
    -- ["<leader>s"] = { name = "Customize", desc = "Customize" },

    ["<C-d>"] = { "<C-d>zz", desc = "move down" },
    ["<C-u>"] = { "<C-u>zz", desc = "move up" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    ["d"] = { [["_d]] },
    ["<leader>sx"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },
    ["<Enter>"] = { [[o<ESC>]] },
    ["<S-Enter>"] = { [[O<ESC>]] },
    ["<leader>Y"] = { [[:%y+<CR><CR>]] },
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
    ["d"] = { [["_d]] },
    ["p"] = { [[P]] },
  },
  x = {},
  i = {
    ["<C-c>"] = { "<ESC>", desc = "ESC" },
  },
}
