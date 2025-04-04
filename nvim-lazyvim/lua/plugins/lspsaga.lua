return {
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({
        finder = {
          keys = {
            toggle_or_open = "<CR>",
            vsplit = "<C-v>",
            split = "<C-s>",
            tabe = "<C-s>",
          },
        },
        definition = {
          keys = {
            edit = "<CR>",
            vsplit = "<C-v>",
            split = "<C-s>",
            tabe = "<C-t>",
          },
        },
        outline = {
          layout = "float",
          detail = false,
          keys = {
            jump = "<CR>",
            toggle_or_open = "<CR>",
            quit = "q",
          },
        },
        code_action = {
          num_shortcut = true,
          show_server_name = false,
          extend_gitsigns = true,
          keys = {
            quit = "<ESC>",
            exec = "<CR>",
          },
        },
        ui = {
          border = "rounded",
        },
        lightbulb = { enable = false },
        symbol_in_winbar = { enable = false },
      })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
}
