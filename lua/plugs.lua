local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- [[ Plugins ]]
  { 
     "kyazdani42/nvim-tree.lua",              -- file system tree
     dependencies = { "kyazdani42/nvim-web-devicons" },
  },
  "voldikss/vim-floaterm",                    -- floating terminal

  -- [[ Lsp ]]
  "williamboman/mason.nvim",                  -- lsp install and manage
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",                    -- collection of LSP configs

  -- [[ Completion ]]
  "hrsh7th/nvim-cmp",                         -- Completion framework
  "hrsh7th/cmp-nvim-lsp",                     -- LSP completion source  

    -- Useful completion sources:
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-vsnip",                             
    "hrsh7th/cmp-path",                              
    "hrsh7th/cmp-buffer",                            
    "hrsh7th/vim-vsnip",   
    "hrsh7th/vim-vsnip",

  -- [[ Rust ]]
  "simrat39/rust-tools.nvim",                 -- auto set lspconfig for rust-analyzer

  -- [[ Theme ]]
  "mhinz/vim-startify",                       -- start screen
  "DanilaMihailov/beacon.nvim",               -- cursor jump
  {
     "nvim-lualine/lualine.nvim",                     -- statusline
     dependencies = { "kyazdani42/nvim-web-devicons" },
  },
  "Mofiqul/dracula.nvim",
  -- 'ryanoasis/vim-devicons',                         -- icons for gyphs
  -- find out why icons don't word properly.

  -- [[ Dev ]]
  {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
     dependencies = { 'nvim-lua/plenary.nvim' }
  },
  'Yggdroot/indentLine',                      -- see indentation
  --'tpope/vim-fugitive',                       -- git integration
  --'junegunn/gv.vim',                          -- commit history
  'windwp/nvim-autopairs',                    -- automatically close brackets
  'tpope/vim-commentary',                     -- auto comment
  -- 'mbbill/undotree',                          -- undo persistent
  'tpope/vim-surround',                       -- surround text with prackets and such
  'nvim-treesitter/nvim-treesitter',          -- parsing and highlighting
  'RRethy/vim-illuminate',                    -- show other uses of word
  'm-demare/hlargs.nvim',                     -- highlight argument definitions
  -- 'ray-x/navigator.lua',            -- overview project structure
  {
    'folke/todo-comments.nvim',               -- colorfull todo-comments
    dependencies = 'nvim-lua/plenary.nvim',
  },
})
