return {
  'comfysage/evergarden',
  config = function()
    require("evergarden").setup({
      transparent_background = true,
      contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
    })
    vim.cmd("colorscheme evergarden")
  end
}
