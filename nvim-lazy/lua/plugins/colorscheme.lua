return {
  {
    "maxmx03/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      ---@type dracula
      local dracula = require("dracula")

      dracula.setup({
        styles = {
          Type = {},
          Function = {},
          Parameter = {},
          Property = {},
          Comment = {},
          String = {},
          Keyword = {},
          Identifier = {},
          Constant = {},
        },
        transparent = true,
        on_colors = function(colors, color)
          ---@type dracula.palette
          return {
            -- override or create new colors
            -- mycolor = 0xffffff,
          }
        end,
        on_highlights = function(colors, color)
          ---@type dracula.highlights
          return {
            ---@type vim.api.keyset.highlight
            TelescopeResultsNormal = { bg = "NONE" },
            TelescopePreviewNormal = { bg = "NONE" },
            TelescopeTitle = { fg = colors.purple, bg = "NONE" },
            TelescopeBorder = { fg = colors.base1, bg = "NONE" },
            TelescopePromptPrefix = { fg = colors.purple },
            TelescopePromptNormal = { bg = "NONE" },
            TelescopePromptCounter = { fg = colors.purple },

            SagaNormal = { bg = "NONE" },
            SagaBorder = { bg = "NONE" },

            WinSeparator = { bg = "NONE" },
            FloatBorder = { bg = "NONE" },
            NormalFloat = { bg = "NONE" },

            BufferLineFill = { bg = "NONE" },
            BufferLineTabSelected = { bg = colors.base03, fg = colors.base1 },
            BufferLineSeparator = { bg = "NONE" },

            FoldColumn = { bg = "NONE", fg = colors.base1 },
          }
        end,
        plugins = {
          ["nvim-treesitter"] = true,
          ["rainbow-delimiters"] = true,
          ["nvim-lspconfig"] = true,
          ["nvim-navic"] = true,
          ["nvim-cmp"] = true,
          ["indent-blankline.nvim"] = true,
          ["neo-tree.nvim"] = true,
          ["nvim-tree.lua"] = true,
          ["which-key.nvim"] = true,
          ["dashboard-nvim"] = true,
          ["gitsigns.nvim"] = true,
          ["neogit"] = true,
          ["todo-comments.nvim"] = true,
          ["lazy.nvim"] = true,
          ["telescope.nvim"] = true,
          ["noice.nvim"] = true,
          ["hop.nvim"] = true,
          ["mini.statusline"] = true,
          ["mini.tabline"] = true,
          ["mini.starter"] = true,
          ["mini.cursorword"] = true,
          ["bufferline.nvim"] = true,
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
      transparent_bg = true,
    },
  },
}
