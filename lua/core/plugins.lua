-- packer.nvim
--
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- startup time optimise
    use 'dstein64/vim-startuptime'
    use 'lewis6991/impatient.nvim'
    use 'nathom/filetype.nvim'

    -- buffer
    use {
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use 'moll/vim-bbye' -- for more sensible delete buffer cmd

    -- themes (disabled other themes to optimize startup time)
    use 'sainnhe/sonokai'
    use 'jacoborus/tender.vim'
    use 'tiagovla/tokyodark.nvim'
    use 'projekt0n/github-nvim-theme'
    use 'joshdick/onedark.vim'
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use { 'sonph/onehalf', rtp = 'vim/' }
    use 'ahmedabdulrahman/aylin.vim'
    use "rebelot/kanagawa.nvim"
    use 'NLKNguyen/papercolor-theme'
    use 'liuchengxu/space-vim-dark'
    use 'sainnhe/edge'
    use 'B4mbus/oxocarbon-lua.nvim'
    use 'Th3Whit3Wolf/one-nvim'
    use 'morhetz/gruvbox'
    use 'altercation/vim-colors-solarized'
    use 'tomasr/molokai'
    use 'rose-pine/neovim'
    use 'shaunsingh/nord.nvim'
    use 'xiyaowong/nvim-transparent'
    use 'dracula/vim'
    use 'sainnhe/everforest'
    use 'sainnhe/gruvbox-material'
    use 'tanvirtin/monokai.nvim'
    use 'overcache/NeoSolarized'
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    -- file tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- status line

    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    -- use { "nvim-telescope/telescope-file-browser.nvim" }
    -- floating terminal
    use 'akinsho/toggleterm.nvim'

    -- indent guide
    -- use 'lukas-reineke/indent-blankline.nvim'

    -- nvim treesitter
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'windwp/nvim-ts-autotag'
    -- git
    use {
        'lewis6991/gitsigns.nvim',
    }
    -- english grammar check
    use 'rhysd/vim-grammarous'

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- lsp
    use "neovim/nvim-lspconfig"
    use 'glepnir/lspsaga.nvim'
    use 'simrat39/rust-tools.nvim'
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'simrat39/symbols-outline.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'onsails/lspkind.nvim'
    use 'mfussenegger/nvim-jdtls'
    -- use 'ray-x/go.nvim'
    use 'mhartington/formatter.nvim'
    -- null-ls
    use 'windwp/nvim-autopairs'
    use 'mg979/vim-visual-multi'
    use { 'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use 'tpope/vim-surround'
    -- Lua
    use {
        "folke/todo-comments.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    -- lsp ????????????
    use "williamboman/mason.nvim"

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    -- use 'ggandor/leap.nvim'
    -- Lua
    use {
        'abecodes/tabout.nvim',
        -- wants = { 'nvim-treesitter' }, -- or require if not used so far
        -- after = { 'nvim-cmp' } -- if a completion plugin is using tabs load it before
    }
    use { 'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    }
end)
