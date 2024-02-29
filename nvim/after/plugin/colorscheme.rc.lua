-- local status, n = pcall(require, "neosolarized")
-- if (not status) then return end
--
-- n.setup({
--   comment_italics = true,
-- })
--
-- local cb = require('colorbuddy.init')
-- local Color = cb.Color
-- local colors = cb.colors
-- local Group = cb.Group
-- local groups = cb.groups
-- local styles = cb.styles
--
-- Color.new('white', '#ffffff')
-- Color.new('black', '#000000')
-- Group.new('Normal', colors.base1, colors.NONE, styles.NONE)
-- Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
-- Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
-- Group.new('Visual', colors.none, colors.base03, styles.reverse)
-- Group.new('NormalFloat', colors.base1, colors.NONE, styles.NONE)
--
-- local cError = groups.Error.fg
-- local cInfo = groups.Information.fg
-- local cWarn = groups.Warning.fg
-- local cHint = groups.Hint.fg
--
-- Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
-- Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
-- Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
-- Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)
--
-- Group.new("HoverBorder", colors.yellow, colors.none, styles.NONE)

-- require('tokyonight').setup {
--     style = 'night',
--     transparent = true,
--     styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--     },
--     on_highlights = function(hl, c)
--         hl.TelescopeResultsNormal = { bg = 'NONE' }
--         hl.TelescopePreviewNormal = { bg = 'NONE' }
--         hl.TelescopeTitle         = { fg = c.purple, bg = 'NONE' }
--         hl.TelescopeBorder        = { bg = 'NONE', fg = c.comment }
--         hl.TelescopePromptPrefix  = { fg = c.purple }
--         hl.TelescopePromptNormal  = { bg = 'NONE' }
--         hl.TelescopePromptCounter = { fg = c.purple }
--
--         hl.SagaNormal             = { bg = 'NONE' }
--         hl.SagaBorder             = { bg = 'NONE', fg = c.comment }
--
--
--         hl.WinSeparator          = { bg = 'NONE' }
--         hl.FloatBorder           = { bg = 'NONE', fg = c.comment }
--         hl.NormalFloat           = { bg = 'NONE' }
--
--         hl.BufferLineFill        = { bg = 'NONE' }
--         hl.BufferLineTabSelected = { bg = c.bgdark, fg = c.purple }
--         hl.BufferLineSeparator   = { bg = 'NONE' }
--
--         hl.FoldColumn            = { bg = 'NONE', fg = c.comment }
--     end,
-- }
--
-- vim.cmd.colorscheme "tokyonight-night"

local dracula = require 'dracula'

-- function Custom(c)
--     return {
--         TelescopeResultsNormal = { bg = 'NONE' },
--         TelescopePreviewNormal = { bg = 'NONE' },
--         TelescopeTitle         = { fg = c.pink, bg = 'NONE' },
--         TelescopeBorder        = { bg = 'NONE', fg = c.comment },
--         TelescopePromptPrefix  = { fg = c.pink },
--         TelescopePromptNormal  = { bg = 'NONE' },
--         TelescopePromptCounter = { fg = c.pink },
--
--         SagaNormal             = { bg = 'NONE' },
--         SagaBorder             = { bg = 'NONE', fg = c.comment },
--
--         WinSeparator           = { bg = 'NONE' },
--         FloatBorder            = { bg = 'NONE', fg = c.comment },
--         NormalFloat            = { bg = 'NONE' },
--
--         --         BufferLineFill         = { bg = 'NONE' },
--         --         BufferLineTabSelected  = { bg = c.bgdark, fg = c.pink },
--         --         BufferLineSeparator    = { bg = 'NONE' },
--
--         FoldColumn             = { bg = 'NONE', fg = c.comment },
--     }
-- end

-- dracula.setup {
--     soft = true,
--     transparent = true,
--     saturation = {
--         enabled = false,
--         -- amount = 10,
--     },
--     -- override = Custom,
-- }

dracula.setup({
    transparent = true,
    on_colors = function(colors, color)
        ---@type dracula.palette
        return {}
    end,
    on_highlights = function(c, color)
        ---@type dracula.highlights
        return {
            --@type vim.api.keyset.highlight
            TelescopeResultsNormal = { bg = 'NONE' },
            TelescopePreviewNormal = { bg = 'NONE' },
            TelescopeTitle         = { fg = c.purple, bg = 'NONE' },
            TelescopeBorder        = { bg = 'NONE', fg = c.base01 },
            TelescopePromptPrefix  = { fg = c.purple },
            TelescopePromptNormal  = { bg = 'NONE' },
            TelescopePromptCounter = { fg = c.purple },

            SagaNormal             = { bg = 'NONE' },
            SagaBorder             = { bg = 'NONE', fg = c.base01 },

            WinSeparator           = { bg = 'NONE' },
            FloatBorder            = { bg = 'NONE', fg = c.base01 },
            NormalFloat            = { bg = 'NONE' },


            -- BufferLineFill         = { bg = 'NONE' },
            -- BufferLineTabSelected  = { bg = c.base03, fg = c.base01 },
            -- BufferLineSeparator    = { bg = 'NONE' },

            FoldColumn = { bg = 'NONE', fg = c.base01 },
        }
    end,
    plugins = {
        -- ["nvim-treesitter"] = true,
        -- ["nvim-lspconfig"] = true,
        -- ["nvim-cmp"] = true,
        -- ["bufferline.nvim"] = true,
        -- ["nvim-tree.lua"] = true,
        -- ["gitsigns.nvim"] = true,
        -- ["todo-comments.nvim"] = true,
        -- ["lazy.nvim"] = true,
        -- ["telescope.nvim"] = true,
    }
})

vim.cmd.colorscheme 'dracula-soft'
