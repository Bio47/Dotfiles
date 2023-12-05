-- [[ Set a colorscheme with priority ]]
return {
  -- 'morhetz/gruvbox',
  -- 'bluz71/vim-moonfly-colors',
  "iibe/gruvbox-high-contrast",
  priority = 1000,
  config = function()
    vim.g.gruvbox_contrast_dark = "hard"
    vim.cmd.colorscheme("gruvbox-high-contrast")
    vim.api.nvim_set_option("background", "dark")
  end,
}
