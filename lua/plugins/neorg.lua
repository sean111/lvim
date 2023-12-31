return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.export"] = {},
        ["core.presenter"] = {},
        ["core.tempus"] = {},
        ["core.ui.calendar"] = {},
        ["core.completion"] = {},
        ["core.summary"] = {},
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/Documents/notes/norg/work",
            },
          },
        },
      },
    })
  end,
  keys = {
    { "<leader>nj", "<cmd>Neorg journal<cr>", desc = "Neorg Journal" },
  },
}
