return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- Keep LazyVim sources, sorting, mappings and native snippet integration.
      -- Batch completion updates and allow slower sources time to respond.
      opts.performance = vim.tbl_deep_extend("force", opts.performance or {}, {
        debounce = 60,
        throttle = 30,
        fetching_timeout = 500,
      })
    end,
  },
}
