local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
        disable = {},
    },
    sync_install = false,
    ensure_installed = {
        -- "help",
        "markdown",
        "markdown_inline",
        "rust",
        "go",
        "tsx",
        "toml",
        "fish",
        "json",
        "yaml",
        "css",
        "html",
        "lua",
        "vim",
        "vimdoc",
        "typescript",
        "javascript",
        "prisma",
        "svelte",
    },
    autotag = {
        enable = true,
    },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
