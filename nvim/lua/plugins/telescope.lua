return {
  {
    "nvim-telescope/telescope.nvim",
    -- Keep LazyVim project-root selection, LSP pickers and keymaps.
    opts = {
      defaults = {
        layout_strategy = "vertical",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
