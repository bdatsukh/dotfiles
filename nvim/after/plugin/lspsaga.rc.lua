local status, saga = pcall(require, "lspsaga")

if (not status) then return end

saga.setup({
    finder = {
        keys = {
            toggle_or_open = '<CR>',
            vsplit = '<C-v>',
            split = '<C-s>',
            tabe = '<C-t>',
        },
    },
    definition = {
        keys = {
            edit = "<CR>",
            vsplit = "<C-v>",
            split = "<C-s>",
            tabe = "<C-t>",
        }
    },
    outline = {
        layout = "float",
        detail = false,
        -- win_position = 'left',
        keys = {
            jump = '<CR>',
            toggle_or_open = '<CR>',
            quit = "q",
        },
    },
    code_action = {
        num_shortcut = true,
        show_server_name = false,
        extend_gitsigns = true,
        keys = {
            -- string | table type
            quit = "<ESC>",
            exec = "<CR>",
        },
    },
    ui = {
        border = 'rounded',
    },
    lightbulb = {
        enable = false,
    },
    symbol_in_winbar = {
        enable = true,
    }
})

local diagnostic = require("lspsaga.diagnostic")
local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'dj', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'dk', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', 'gl', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
vim.keymap.set('n', 'gL', '<cmd>Lspsaga show_workspace_diagnostics<CR>', opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<cmd>Lspsaga goto_definition<CR>', opts)
vim.keymap.set('n', 'gD', '<cmd>Lspsaga goto_type_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<cmd>Lspsaga finder ref ++inexist<CR>', opts)
-- vim.keymap.set('n', 'gK', '<cmd>Lspsaga signature_help<CR>', opts)
-- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('i', '<C-b>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'gp', '<cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gP', '<cmd>Lspsaga peek_type_definition<CR>', opts)

vim.keymap.set('n', 'gn', '<cmd>Lspsaga rename<CR>', opts)
vim.keymap.set("n", "<leader>co", "<cmd>Lspsaga outline<CR>")

-- code action
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
-- vim.keymap.set({"n", "t"}, "<C-]>", "<cmd>Lspsaga term_toggle<CR>")
