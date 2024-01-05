return {
  "hrsh7th/nvim-cmp",
  dependencies = {},
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { {} }))
    opts.experimental.ghost_text = true
  end,
}
