vim.g.bookmark_sign = '♥'
vim.g.bookmark_highlight_lines = 1
vim.g.bookmark_no_default_key_mappings = 1

vim.keymap.set('n', 'mm', ":BookmarkToggle<CR>")
vim.keymap.set('n', 'mc', ':BookmarkClear<CR>')
vim.keymap.set('n', 'mx', ':BookmarkClearAll<CR>')

vim.keymap.set('n', 'ma', "<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>")
vim.keymap.set('n', 'mn', "<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>")
