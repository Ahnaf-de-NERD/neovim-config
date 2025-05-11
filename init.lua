
-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.g.mapleader = " "


-- Install lazy by the command below
-- git clone https://github.com/folke/lazy.nvim.git ~/.config/nvim/lazy/lazy.nvim
-- and then, mkdir -p ~/.config/nvim/lua


-- Load plugins via lazy.nvim
local lazypath = vim.fn.stdpath("config") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)


local opts = {}


require("lazy").setup("plugins", opts)


-- required codes for Telescope
local builtin = require("telescope.builtin")


-- required codes for Treesitter
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = { "c", "cpp" },
    highlight = { enable = true },
    indent = { enable = true },
})


-- required codes for Lualine
require("lualine").setup({
    options = { theme = "dracula" }
})


vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-n>', ':Neotree toggle right<CR>', {})


-- Set the colorscheme
vim.cmd("colorscheme nord")
