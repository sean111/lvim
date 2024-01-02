return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {--[[ things you want to change go here]]
    start_in_insert = true,
    auto_scroll = true,
    direction = "float",
    float_opts = {
      border = "double",
      winblend = 3,
    },
  },
  keys = {
    { "<leader>ot", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
  },
}
