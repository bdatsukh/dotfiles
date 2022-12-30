local opt = vim.opt

-- shell
opt.shell = "fish"

-- backup
opt.backup = false
opt.swapfile = false
opt.backupskip = "/tmp*,/private/tmp/*"

-- encoding
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.smarttab = true
opt.breakindent = true
opt.inccommand = "split"

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true
opt.signcolumn = "yes"

-- appearance
opt.termguicolors = true
opt.background = "dark"

-- backspace
opt.backspace = { "start", "eol", "indent" }

-- clipboard
opt.clipboard:prepend({ "unnamed", "unnamedplus" })

-- split window
opt.splitright = true
opt.splitbelow = true

opt.errorbells = false
opt.title = true

-- Finding files --Search down into subfolders
opt.path:append({ "**" })
opt.wildignore:append({ "*/node_modules/*" },
  { "*/.next/*" },
  { "*/.yarn/*" },
  { "*/dist/*" })

opt.iskeyword:append("-") -- consider string-string as whole word

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
  augroup END
]]
