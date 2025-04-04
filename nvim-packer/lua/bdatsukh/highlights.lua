vim.opt.cursorline = true
vim.opt.termguicolors = true
-- vim.opt.winblend = 0
-- vim.opt.wildoptions = 'pum'
-- vim.opt.pumblend = 5
vim.opt.background = 'dark'
vim.opt.signcolumn = 'yes'

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
  augroup END
]]

-- vim.cmd [[
--   hi default link UfoPreviewSbar PmenuSbar
--   hi default link UfoPreviewThumb PmenuThumb
--   hi default link UfoPreviewWinBar UfoFoldedBg
--   hi default link UfoPreviewCursorLine Visual
--   hi default link UfoFoldedEllipsis Comment
--   hi default link UfoCursorFoldedLine CursorLine
-- ]]

-- "hi default UfoFoldedFg guifg=Normal.foreground
-- "hi default UfoFoldedBg guibg=Folded.background
