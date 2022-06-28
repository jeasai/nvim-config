--[[   Plugins  ]]--

require('packer').startup(function()
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Configurations for Nim LSP
  use 'neovim/nvim-lspconfig'

  -- Nerdtree
  use 'preservim/nerdtree'

  -- Better syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- icons for nerdtree
  use 'ryanoasis/vim-devicons'

  -- Bottom line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Top bar
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Telescope
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Terminal
  use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
      require("toggleterm").setup()
  end}

  -- Theme
  use 'olimorris/onedarkpro.nvim'
end)

--[[   Basics   ]]--

vim.opt.number = true 	  -- line number
vim.opt.expandtab = true  -- spaces instead of tabs
vim.opt.tabstop = 4       -- tab width to 4 cols
vim.opt.shiftwidth = 4    -- width for autoindents
vim.opt.autoindent = true -- auto indent new lines

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- vim.opt.nowrap = true     -- Allow long lines
vim.opt.showmatch = true  -- Show matching brackets

vim.opt.mouse = 'a'

vim.cmd([[let &fcs='eob: ']])  -- Disable ~ on all empty lines
vim.cmd([[set termguicolors]]) -- For the top line

vim.g.NERDTreeIgnore = { [[\.o$]] } -- Ignore object files in nerdtree
vim.g.NERDTreeQuitOnOpen = 1
vim.g.completeopt=menu,menuone,noselect

--[[    Bindings    ]]--

-- mode: "n", "i", "v", "x" or ""
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

map("", "<up>", ":tabp<cr>")
map("", "<down>", ":tabn<cr>")
map("", "<left>", ":wincmd h<cr>")
map("", "<right>", ":wincmd l<cr>")
map("", "<C-f>", "<cmd>Telescope live_grep<cr>")
map("n", "<tab>", ":NERDTreeToggle<cr>")
map("", "<C-t>", "<cmd>ToggleTerm size=10 direction=horizontal<cr>")
map("", "<A-t>", "<cmd>ToggleTerm direction=tab<cr>")
