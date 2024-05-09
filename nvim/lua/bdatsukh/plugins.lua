-- auto install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
    return
end

packer.startup({
    function(use)
        use 'wbthomason/packer.nvim'
        use 'nvim-lua/plenary.nvim' -- Common utilities

        use {
            'svrana/neosolarized.nvim',
            requires = { 'tjdevries/colorbuddy.nvim' }
        }
        use 'folke/tokyonight.nvim'
        use 'maxmx03/dracula.nvim'
        use { "rose-pine/neovim", as = "rose-pine" }

        use 'nvim-lualine/lualine.nvim' -- Statusline

        use {
            'nvim-treesitter/nvim-treesitter',
            run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
        }
        use {
            "nvim-treesitter/nvim-treesitter-textobjects",
            after = "nvim-treesitter",
            requires = "nvim-treesitter/nvim-treesitter",
        }
        use 'nvim-telescope/telescope.nvim'
        use 'nvim-telescope/telescope-file-browser.nvim'

        use { 'numToStr/Comment.nvim',
            requires = {
                'JoosepAlviste/nvim-ts-context-commentstring'
            }
        }
        use 'folke/zen-mode.nvim'
        use 'lewis6991/gitsigns.nvim'
        use 'dinhhuy258/git.nvim' -- For git blame & browse
        -- use 'tpope/vim-fugitive' -- For git blame & browse
        use 'tpope/vim-surround'
        use "mbbill/undotree"
        use 'norcalli/nvim-colorizer.lua'

        use 'akinsho/bufferline.nvim';

        use 'kyazdani42/nvim-web-devicons' -- File icons
        use 'windwp/nvim-autopairs'
        use 'windwp/nvim-ts-autotag'
        -- vscode-like pictograms
        use 'onsails/lspkind-nvim'

        -- Autocompletion
        use 'hrsh7th/nvim-cmp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-nvim-lsp'

        use 'L3MON4D3/LuaSnip'

        use 'neovim/nvim-lspconfig'
        use {
            'nvimdev/lspsaga.nvim',
            after = 'nvim-lspconfig',
        }

        use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
        use 'williamboman/mason.nvim'
        use 'williamboman/mason-lspconfig.nvim'
        use 'theprimeagen/harpoon'
        use 'eandrju/cellular-automaton.nvim'

        use 'folke/todo-comments.nvim';

        use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
        use "luukvbaal/statuscol.nvim"

        -- use "github/copilot.vim"

        if packer_bootstrap then
            require('packer').sync()
        end
    end,
})
