return {
  {
    "tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    config = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_execute_query_in = "floating_window"
      vim.g.db_ui_win_position = "right"
      vim.g.db_ui_winwidth = 40
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "kristijanhusak/vim-dadbod-completion" },
    config = function()
      local cmp = require("cmp")
      cmp.setup.filetype("sql", {
        sources = {
          { name = "vim-dadbod-completion" },
          { name = "buffer" },
        },
      })
    end,
  },
}
