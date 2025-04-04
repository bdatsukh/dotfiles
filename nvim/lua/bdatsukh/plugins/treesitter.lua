return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"c",
				"diff",
				"http",
				"xml",
				"query",
				"html",
				"lua",
				"luadoc",
				"css",
				"tsx",
				"jsdoc",
				"javascript",
				"typescript",
				"json",
				"jsonc",
				"yaml",
				"go",
				"java",
				"markdown",
				"markdown_inline",
				"query",
				"vim",
				"vimdoc",
			},
			auto_install = false,
			highlight = { enable = true },
			indent = { enable = false },
			textobjects = {
				select = {
					enable = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
					include_surrounding_whitespace = false,
				},
				move = {
					enable = true,
					set_jumps = true,
					goto_next_start = {
						["<Space>j"] = "@function.outer",
					},
					goto_previous_start = {
						["<Space>k"] = "@function.outer",
					},
				},
				swap = {
					enable = false,
				},
			},
		})

		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
	end,
}
