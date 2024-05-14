return {
  "rebelot/kanagawa.nvim",
  name  = "kanagawa",
  config = function()
    require('kanagawa').setup({
      transparent = true,
      theme = "wave",
    })

    vim.cmd("colorscheme kanagawa")
  end
}
