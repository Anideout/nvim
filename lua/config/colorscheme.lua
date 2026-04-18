-- Custom colorscheme configuration
-- Color palette:
-- #af43be -- keywords (class, def, from) and data types
-- #fd8090 -- strings and built-ins (None, True)
-- #c4ffff -- variables, normal code text
-- #08deea -- function names and operators
-- #1261d1 -- statusbar background (with light text)

local function setup_colorscheme()
  -- Syntax highlights
  local highlights = {
    -- Keywords and control flow
    ["Keyword"] = { fg = "#af43be" },
    ["Statement"] = { fg = "#af43be" },
    ["Conditional"] = { fg = "#af43be" },
    ["Repeat"] = { fg = "#af43be" },
    ["Operator"] = { fg = "#08deea" },

    -- Types and declarations
    ["Type"] = { fg = "#af43be" },
    ["Typedef"] = { fg = "#af43be" },
    ["StorageClass"] = { fg = "#af43be" },

    -- Functions
    ["Function"] = { fg = "#08deea" },
    ["Identifier"] = { fg = "#c4ffff" },

    -- Strings and constants
    ["String"] = { fg = "#fd8090" },
    ["Character"] = { fg = "#fd8090" },
    ["Boolean"] = { fg = "#fd8090" },
    ["Number"] = { fg = "#fd8090" },
    ["Constant"] = { fg = "#fd8090" },

    -- Normal text
    ["Normal"] = { fg = "#c4ffff" },
    ["NormalNC"] = { fg = "#c4ffff" },
    ["Comment"] = { fg = "#627d8d", italic = true },
    ["LineNr"] = { fg = "#5e6e85" },
    ["CursorLineNr"] = { fg = "#c4ffff" },

    -- Misc
    ["Tag"] = { fg = "#af43be" },
    ["Label"] = { fg = "#af43be" },
    ["Structure"] = { fg = "#af43be" },
    ["PreProc"] = { fg = "#af43be" },
    ["Include"] = { fg = "#af43be" },
    ["Define"] = { fg = "#af43be" },
    ["Macro"] = { fg = "#af43be" },
    ["Special"] = { fg = "#08deea" },
    ["SpecialChar"] = { fg = "#fd8090" },
    ["Title"] = { fg = "#08deea", bold = true },
  }

  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

-- Setup lualine theme
local function setup_lualine_theme()
  require("lualine").setup({
    options = {
      theme = {
        normal = {
          a = { fg = "#1261d1", bg = "#c4ffff", bold = true },
          b = { fg = "#1261d1", bg = "#c4ffff" },
          c = { fg = "#c4ffff", bg = "#1261d1" },
        },
        insert = {
          a = { fg = "#1261d1", bg = "#c4ffff", bold = true },
          b = { fg = "#1261d1", bg = "#c4ffff" },
          c = { fg = "#c4ffff", bg = "#1261d1" },
        },
        visual = {
          a = { fg = "#1261d1", bg = "#c4ffff", bold = true },
          b = { fg = "#1261d1", bg = "#c4ffff" },
          c = { fg = "#c4ffff", bg = "#1261d1" },
        },
        replace = {
          a = { fg = "#1261d1", bg = "#c4ffff", bold = true },
          b = { fg = "#1261d1", bg = "#c4ffff" },
          c = { fg = "#c4ffff", bg = "#1261d1" },
        },
        command = {
          a = { fg = "#1261d1", bg = "#c4ffff", bold = true },
          b = { fg = "#1261d1", bg = "#c4ffff" },
          c = { fg = "#c4ffff", bg = "#1261d1" },
        },
        inactive = {
          a = { fg = "#c4ffff", bg = "#1261d1" },
          b = { fg = "#c4ffff", bg = "#1261d1" },
          c = { fg = "#c4ffff", bg = "#1261d1" },
        },
      },
    },
  })
end

-- Apply on colorscheme load
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    setup_colorscheme()
    setup_lualine_theme()
  end,
})

-- Also apply when colorscheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- Small delay to let colorscheme apply first
    vim.defer_fn(function()
      setup_colorscheme()
    end, 50)
  end,
})