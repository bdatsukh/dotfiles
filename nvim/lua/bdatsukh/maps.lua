local keymap = vim.keymap
vim.g.mapleader = ';'

-- keymap.set("i", "jk", "<ESC>")
--

keymap.set('i', '<C-e>', '<C-x><C-e>')
keymap.set('i', '<C-y>', '<C-x><C-y>')

-- Increment/decrement
-- keymap.set('n', '+', '<C-a>')
-- keymap.set('n', '-', '<C-x>')
-- Increment

-- New tab
keymap.set('n', '<C-t>', ':tabedit<CR>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
keymap.set("n", "sw", ":close<CR>")

-- Move window
keymap.set('n', '<Space>', '<C-w>w')

keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

keymap.set('n', 's\\', '<C-w>|')
keymap.set('n', 's-', '<C-w>_')
keymap.set('n', 's=', '<C-w>=')

keymap.set('n', 'st', '<C-w>T')

keymap.set('n', 'sH', '<C-w>H')
keymap.set('n', 'sJ', '<C-w>J')
keymap.set('n', 'sK', '<C-w>K')
keymap.set('n', 'sL', '<C-w>L')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

keymap.set("v", "J", ":m '>+<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
---

keymap.set('x', '<leader>p', '"_dP')

-- terminal
keymap.set('t', '<Esc>', '<C-\\><C-n>')


keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "gm", "gM")
keymap.set("n", "gs", "<nop>")

-- for tmux
keymap.set('n', '<C-a>', '<nop>')

-- tmux sessionizer
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
