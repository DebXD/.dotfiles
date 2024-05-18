return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		require("gruvbox").setup({
			transparent_mode = true,
			terminal_colors = true,
			contrast = "soft",
			dim_inactive = true,
			palette_overrides = {
				bright_red = "#EA6962",
         bright_orange = "#e78a4e",
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
