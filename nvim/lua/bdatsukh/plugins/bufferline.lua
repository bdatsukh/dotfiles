return {
	"akinsho/bufferline.nvim",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				themable = true,
				numbers = "none",
				close_icon = "",
				show_close_icon = false,
				buffer_close_icon = "",
				show_buffer_close_icons = false,
			},
			highlights = {},
		})

		vim.keymap.set("n", "<Tab>", ":tabnext<CR>")
		vim.keymap.set("n", "<S-Tab>", ":tabprevious<CR>")
	end,
}
