return {
	"dinhhuy258/git.nvim",
	config = function()
		require("git").setup({
			keymaps = {
				-- Open blame window
				blame = "<Leader>gB",
				-- Open file/folder in git repository
				browse = "<Leader>go",
			},
		})
	end,
}
