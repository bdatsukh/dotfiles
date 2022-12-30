vim.g.mapleader = ";"

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "<ESC>", "<nop>")
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "x", '"_x')
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

keymap.set('i', '<C-E>', '<C-X><C-E>')
keymap.set('i', '<C-Y>', '<C-X><C-Y>')

-- New tab
keymap.set("n", "<C-w>", ":tabclose<CR>") -- close current tab
keymap.set("n", "<C-t>", ":tabedit<CR>") -- open new tab
keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")
keymap.set("n", "sw", ":close<CR>")

-- Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

---
keymap.set("", "<S-Up>", ":m-2<CR>")
keymap.set("", "<S-Down>", ":m+1<CR>")

-- plugin keymaps
