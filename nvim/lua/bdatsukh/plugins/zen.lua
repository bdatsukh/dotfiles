return {
	"folke/zen-mode.nvim",
	config = function()
		require("zen-mode").setup({})

		vim.keymap.set("n", "<C-w>m", "<cmd>ZenMode<cr>", { silent = true })
		vim.keymap.set("n", "<C-w>z", "<cmd>ZenMode<cr>", { silent = true })
	end,
}
