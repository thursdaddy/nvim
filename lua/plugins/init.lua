return {
  { 'echasnovski/mini.comment',
    config = function()
         require('mini.comment').setup()
    end
  },
  'fisadev/vim-isort',
  'folke/trouble.nvim',
  'folke/zen-mode.nvim',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-path',
  { 'junegunn/fzf', build = './install --bin' },
  'lewis6991/gitsigns.nvim',
  'lunarvim/Onedarker.nvim',
  'mbbill/undotree',
  'numToStr/FTerm.nvim',
  'nvim-lua/plenary.nvim',
  'nvim-lualine/lualine.nvim',
  'nvim-telescope/telescope.nvim',
  { 'nvim-tree/nvim-tree.lua',
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end
  },
  { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate" },
  'nvim-treesitter/nvim-treesitter-context',
  'rafamadriz/friendly-snippets',
  'saadparwaiz1/cmp_luasnip',
  'stsewd/fzf-checkout.vim',
  'theprimeagen/harpoon',
  { 'tpope/vim-fugitive', lazy = false },
  'tpope/vim-surround',
}
