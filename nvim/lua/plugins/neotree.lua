return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = { visible = true, hide_dotfiles = false },
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
      default_component_configs = { indent = { padding = 0 } },
      window = { position = "left", width = 40 },
    },
  },
}
