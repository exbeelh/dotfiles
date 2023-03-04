local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'L3MON4D3/LuaSnip'
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        require("lspsaga").setup({})
    end,
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
  })
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- vscode-lice pictogram
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig' -- LSP Config
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'norcalli/nvim-colorizer.lua'
  use 'lewis6991/gitsigns.nvim'
end)
