return {
	"folke/tokyonight.nvim",
	config = function()
		require("tokyonight").setup({
			style = "night",
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
			on_highlights = function(hl, c)
				hl.TelescopeResultsNormal = { bg = "NONE" }
				hl.TelescopePreviewNormal = { bg = "NONE" }
				hl.TelescopeTitle = { fg = c.purple, bg = "NONE" }
				hl.TelescopeBorder = { bg = "NONE", fg = c.comment }
				hl.TelescopePromptPrefix = { fg = c.purple }
				hl.TelescopePromptNormal = { bg = "NONE" }
				hl.TelescopePromptCounter = { fg = c.purple }

				hl.SagaNormal = { bg = "NONE" }
				hl.SagaBorder = { bg = "NONE", fg = c.comment }

				hl.WinSeparator = { bg = "NONE" }
				hl.FloatBorder = { bg = "NONE", fg = c.comment }
				hl.NormalFloat = { bg = "NONE" }

				hl.BufferLineFill = { bg = "NONE" }
				hl.BufferLineBuffer = { bg = "NONE" }
				hl.BufferLineBackground = { bg = "NONE" }
				hl.BufferLineTab = { bg = "NONE" }
				hl.BufferLineTab = { bg = "NONE" }
				hl.BufferLineTabSelected = { bg = c.bgdark, fg = c.purple }
				hl.BufferLineSeparator = { bg = "NONE" }
				hl.ColorColumn = { bg = "NONE" }
				hl.TabLineFill = { bg = "NONE" }
				hl.TabLine = { bg = "NONE" }

				hl.FoldColumn = { bg = "NONE", fg = c.comment }
			end,
		})
	end,
}
