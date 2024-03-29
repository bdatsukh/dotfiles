local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
    defaults = {
        file_ignore_patterns = {
            ".git/",
        },
        mappings = {
            n = {
                ["q"] = actions.close,
                ['<C-t>'] = actions.select_tab,
                ['<C-s>'] = actions.select_horizontal,
                ['<C-v>'] = actions.select_vertical,
            },
            i = {
                ['<C-s>'] = actions.select_horizontal,
                ['<C-t>'] = actions.select_tab,
                ['<C-v>'] = actions.select_vertical,
            }
        },
    },
    extensions = {
        file_browser = {
            theme = "dropdown",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                -- your custom insert mode mappings
                ["i"] = {
                    ["<C-w>"] = function() vim.cmd('normal vbd') end,
                },
                ["n"] = {
                    -- your custom normal mode mappings
                    ["N"] = fb_actions.create,
                    ["h"] = fb_actions.goto_parent_dir,
                    ["/"] = function()
                        vim.cmd('startinsert')
                    end
                },
            },
        },
    },
}

telescope.load_extension "file_browser"

-- vim.keymap.set('n', '<leader>f', function()
--   builtin.git_files()
-- end)

vim.keymap.set('n', "<leader>F",
    function()
        builtin.find_files({
            no_ignore = true,
            hidden = true,
        })
    end)

vim.keymap.set('n', "<leader>f",
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true,
        })
    end)
vim.keymap.set('n', '<leader>r', function()
    builtin.live_grep()
end)
vim.keymap.set('n', '\\\\', function()
    builtin.buffers()
end)
vim.keymap.set('n', '<leader>T', function()
    builtin.help_tags()
end)
vim.keymap.set('n', '<leader>t', function()
    builtin.treesitter()
end)
vim.keymap.set('n', '<leader><leader>', function()
    builtin.resume()
end)
vim.keymap.set('n', '<leader>e', function()
    builtin.diagnostics()
end)
vim.keymap.set('n', '<leader>\'', function()
    builtin.registers()
end)
vim.keymap.set("n", "<leader>b", function()
    telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        cwd = telescope_buffer_dir(),
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        select_buffer = true,
        previewer = false,
        initial_mode = "normal",
        layout_config = { height = 40 }
    })
end)
