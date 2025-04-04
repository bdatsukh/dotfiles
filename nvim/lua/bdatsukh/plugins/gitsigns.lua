return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signcolumn = true,
		numhl = false,

		current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
			delay = 100,
			ignore_whitespace = false,
		},
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map("n", "gj", function()
				if vim.wo.diff then
					return "gj"
				end
				vim.schedule(function()
					gs.next_hunk()
				end)
				return "<Ignore>"
			end, { expr = true })

			map("n", "gk", function()
				if vim.wo.diff then
					return "gk"
				end
				vim.schedule(function()
					gs.prev_hunk()
				end)
				return "<Ignore>"
			end, { expr = true })

			-- Actions
			map("n", "<leader>gs", gs.stage_hunk)
			map("n", "<leader>gr", gs.reset_hunk)

			map("v", "<leader>gs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end)
			map("v", "<leader>gr", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end)

			map("n", "<leader>gS", gs.stage_buffer)

			map("n", "<leader>gu", gs.undo_stage_hunk)

			map("n", "<leader>gR", gs.reset_buffer)

			map("n", "<leader>gp", gs.preview_hunk)

			-- map('n', '<leader>gb', function() gs.blame_line { full = true } end)
			map("n", "<leader>gb", gs.preview_hunk_inline)
			map("n", "<leader>gt", gs.toggle_current_line_blame)

			map("n", "<leader>gd", gs.diffthis)
			map("n", "<leader>gD", function()
				gs.diffthis("~")
			end)
			-- map('n', '<leader>td', gs.toggle_deleted)

			-- -- Text object
			map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
		end,
	},
}
