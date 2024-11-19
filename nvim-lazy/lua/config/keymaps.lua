-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-e>", "<C-x><C-e>")
vim.keymap.set("i", "<C-y>", "<C-x><C-y>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-w>z", "<Cmd>ZenMode<CR>", { silent = true, noremap = true, remap = true, desc = "ZenMode" })
vim.keymap.set("n", "<C-w>m", "<Cmd>ZenMode<CR>", { silent = true, noremap = true, remap = true, desc = "ZenMode" })

vim.keymap.set(
  "n",
  "dj",
  "<Cmd>Lspsaga diagnostic_jump_next<CR>",
  { silent = true, noremap = true, remap = true, desc = "Diagnostic jump next" }
)

vim.keymap.set(
  "n",
  "dk",
  "<Cmd>Lspsaga diagnostic_jump_prev<CR>",
  { silent = true, noremap = true, remap = true, desc = "Diagnostic jump prev" }
)

vim.keymap.set(
  "n",
  "gl",
  "<Cmd>Lspsaga show_line_diagnostics<CR>",
  { silent = true, noremap = true, remap = true, desc = "Show line diagnostics" }
)

vim.keymap.set(
  "n",
  "gL",
  "<Cmd>Lspsaga show_workspace_diagnostics<CR>",
  { silent = true, noremap = true, remap = true, desc = "Show workspace diagnostics" }
)

vim.keymap.set(
  "n",
  "gd",
  "<Cmd>Lspsaga goto_definition<CR>",
  { silent = true, noremap = true, remap = true, desc = "go to definition" }
)

vim.keymap.set(
  "n",
  "gD",
  "<Cmd>Lspsaga goto_type_definition<CR>",
  { silent = true, noremap = true, remap = true, desc = "go to definition" }
)

vim.keymap.set(
  "n",
  "gp",
  "<Cmd>Lspsaga peek_definition<CR>",
  { silent = true, noremap = true, remap = true, desc = "Peek definition" }
)

vim.keymap.set(
  "n",
  "gP",
  "<Cmd>Lspsaga peek_type_definition<CR>",
  { silent = true, noremap = true, remap = true, desc = "Peek type definition" }
)

vim.keymap.set(
  "n",
  "gr",
  "<Cmd>Lspsaga finder ref ++inexist<CR>",
  { silent = true, noremap = true, remap = true, desc = "Show reference" }
)

vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", { silent = true, noremap = true, remap = true, desc = "Hover" })

vim.keymap.set(
  "i",
  "<C-b>",
  "<Cmd>lua vim.lsp.buf.signature_help()<CR>",
  { silent = true, noremap = true, remap = true, desc = "Signature help" }
)

vim.keymap.set(
  { "n", "v" },
  "<leader>ca",
  "<Cmd>Lspsaga code_action<CR>",
  { silent = true, noremap = true, remap = true, desc = "Code action" }
)

vim.keymap.set("n", "<C-a>", "<nop>")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
