-- [[ Adds a greeter to nvim ]]
return {
  -- Greeter for nvim
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    require'alpha'.setup(require'alpha.themes.startify'.config)
  end
}
