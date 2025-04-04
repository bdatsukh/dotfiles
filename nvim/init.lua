require("bdatsukh.opt")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit" },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"nvim-lua/plenary.nvim",
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	-- LSP Plugins
	{
		-- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
		-- used for completion, annotations and signatures of Neovim apis
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				-- Load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},

	require("bdatsukh.plugins.dracula"),
	require("bdatsukh.plugins.tokyonight"),
	require("bdatsukh.plugins.rosepine"),
	require("bdatsukh.plugins.dracula"),
	require("bdatsukh.plugins.lualine"),
	require("bdatsukh.plugins.lspconfig"),
	require("bdatsukh.plugins.cmp"),
	require("bdatsukh.plugins.lspsaga"),
	require("bdatsukh.plugins.conform"),
	require("bdatsukh.plugins.treesitter"),
	require("bdatsukh.plugins.telescope"),
	require("bdatsukh.plugins.harpoon"),
	require("bdatsukh.plugins.todo"),
	require("bdatsukh.plugins.zen"),
	require("bdatsukh.plugins.flash"),
	require("bdatsukh.plugins.surround"),
	require("bdatsukh.plugins.git"),
	require("bdatsukh.plugins.gitsigns"),
	require("bdatsukh.plugins.undotree"),
	require("bdatsukh.plugins.autotag"),
	require("bdatsukh.plugins.autopair"),
	require("bdatsukh.plugins.statuscol"),
	require("bdatsukh.plugins._ufo"),
	require("bdatsukh.plugins.bufferline"),
	require("bdatsukh.plugins.lazygit"),
	-- require("bdatsukh.plugins.kulala"),
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
