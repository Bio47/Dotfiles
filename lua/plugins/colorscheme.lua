-- [[ Set a colorscheme with priority ]]
return {
  -- 'morhetz/gruvbox',
  'bluz71/vim-moonfly-colors',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'moonfly'
  end,
}
