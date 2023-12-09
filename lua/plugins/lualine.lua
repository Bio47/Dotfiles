-- [[ Adds a status bar to nvimm ]]
return {
  -- Set lualine as statusline
  "nvim-lualine/lualine.nvim",
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = true,
      theme = "gruvbox",
      component_separators = "|",
      section_separators = "",
    },
    sections = {
      lualine_c = {
        'buffers',
      },
    },
  },
}
