return {
	"maxmx03/dracula.nvim",
	priority = 1000,
	config = function()
		require("dracula").setup({
			transparent = true,
			on_highlights = function(c, color)
				return {
					WinSeparator = { bg = "NONE" },
					FloatBorder = { bg = "NONE", fg = c.base01 },
					NormalFloat = { bg = "NONE" },
					FoldColumn = { bg = "NONE", fg = c.base01 },

					BufferLineFill = { bg = "NONE", fg = "NONE" },
					BufferLineBuffer = { bg = "NONE" },
					BufferLineBackground = { bg = "NONE" },
					BufferLineTab = { bg = "NONE" },
					BufferLineTabSelected = { bg = c.base03, fg = c.base01 },
					BufferLineSeparator = { bg = "NONE" },
					ColorColumn = { bg = "NONE" },
					TabLineFill = { bg = "NONE" },
					TabLine = { bg = "NONE" },

					TelescopeResultsNormal = { bg = "NONE" },
					TelescopePreviewNormal = { bg = "NONE" },
					TelescopeTitle = { fg = c.purple, bg = "NONE" },
					TelescopeBorder = { bg = "NONE", fg = c.base01 },
					TelescopePromptPrefix = { fg = c.purple },
					TelescopePromptNormal = { bg = "NONE" },
					TelescopePromptCounter = { fg = c.purple },

					SagaNormal = { bg = "NONE" },
					SagaBorder = { bg = "NONE", fg = c.base01 },
				}
			end,
			plugins = {
				["nvim-treesitter"] = true,
				["nvim-lspconfig"] = true,
				["nvim-cmp"] = true,
				["bufferline.nvim"] = true,
				["gitsigns.nvim"] = true,
				["todo-comments.nvim"] = true,
				["lazy.nvim"] = true,
				["telescope.nvim"] = true,
			},
		})

		vim.cmd.colorscheme("dracula")
	end,
}
