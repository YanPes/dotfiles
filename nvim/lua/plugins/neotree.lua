return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = true,
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            respect_gitignore = false,
          },
          follow_current_file = {
            enabled = true,
          },
          use_libuv_file_watcher = true,
        },
        default_component_configs = {
          indent = {
            padding = 0,
          },
        },
        window = {
          position = "left",
          width = 40,
        },
      })
    end,
  },
}