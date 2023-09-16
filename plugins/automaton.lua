return {
  "eandrju/cellular-automaton.nvim",
  config = function()
    local config = {
      fps = 50,
      name = "slide",
    }
    -- update function
    config.update = function(grid)
      for i = 1, #grid do
        local prev = grid[i][#grid[i]]
        for j = 1, #grid[i] do
          grid[i][j], prev = prev, grid[i][j]
        end
      end
      return true
    end
    require("cellular-automaton").register_animation(config)
  end,
  keys = {
    { "<leader>sa", "<cmd>CellularAutomaton make_it_rain<CR>", desc = "make it rain" },
    { "<leader>sg", "<cmd>CellularAutomaton game_of_life<CR>", desc = "game of life" },
    { "<leader>sl", "<cmd>CellularAutomaton slide<CR>", desc = "slide" },
  },
}
