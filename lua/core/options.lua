-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true vim.o.smartcase = true
vim.o.smartindent = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Indent
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

-- Splits
vim.o.splitbelow = true
vim.o.splitright = true

-- Scrolls bottom page
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Encoding file
vim.o.fileencoding = 'utf-8'

-- Show tabs
vim.o.showtabline = 2
