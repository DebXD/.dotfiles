return {
  "sainnhe/gruvbox-material",
  name   = "gruvbox-material",
  config = function()
    --require("gruvbox-material").setup({})
    vim.cmd("colorscheme gruvbox-material")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFLoat", { bg = "none" })
  end
}
