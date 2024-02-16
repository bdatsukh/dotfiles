local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

treesitter.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
    sync_install = false,
    auto_install = false,
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
    },
    autotag = {
        enable = true,
    },
    textobjects = {
        select = {
            enable = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            },
            include_surrounding_whitespace = false,
        },
        move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
                ["<Space>j"] = "@function.outer",
            },
            goto_previous_start = {
                ["<Space>k"] = "@function.outer",
            },
        },
        swap = {
            enable = false
        },
    },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
