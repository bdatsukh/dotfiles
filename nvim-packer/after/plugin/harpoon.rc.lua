local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<Space>`", mark.add_file)
vim.keymap.set("n", "<Space>h", ui.toggle_quick_menu)

vim.keymap.set("n", "<Space>a", function() ui.nav_file(1) end)
vim.keymap.set("n", "<Space>s", function() ui.nav_file(2) end)
vim.keymap.set("n", "<Space>d", function() ui.nav_file(3) end)
vim.keymap.set("n", "<Space>f", function() ui.nav_file(4) end)
vim.keymap.set("n", "<Space>5", function() ui.nav_file(5) end)
