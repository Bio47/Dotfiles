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

require("config.options")
require("config.globals")
require("config.keymaps")

local plugins = "plugins"
local lsp = "plugins.lsp"

local opts = {
  defaults = {
    lazy = false,
  },
  install = {
    colorscheme = { "moonfly" },
  },
  rtp = {
    disabled_plugins = {
      --	"gzip",
      --	"matchit",
      --	"matchparen",
      "netrw",
      "netrwPlugin",
      --	"tarPlugin",
      --	"tohtml",
      --"tutor",
      --"zipPlugin",
    },
  },
  change_detection = {
    notify = false,
  },
}
require("lazy").setup({ { import = plugins }, { import = lsp } }, opts)
