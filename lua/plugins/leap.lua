-- [[ Better movement for nvim ]]
return {
  -- leap, improved movement
  'ggandor/leap.nvim',
  config = function()
    require('leap').add_default_mappings()
  end,
}
