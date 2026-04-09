return {
  {
    "3rd/image.nvim",
    event = "VeryLazy",
    opts = {
      backend = "kitty", -- Ghostty usa el protocolo de Kitty
      integrations = {
        markdown = { enabled = true },
        neorg = { enabled = false },
        html = { enabled = false },
      },
      max_width = 120,
      max_height = 50,
      max_width_window_percentage = math.huge,
      max_height_window_percentage = math.huge,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs" },
    },
  },
}
