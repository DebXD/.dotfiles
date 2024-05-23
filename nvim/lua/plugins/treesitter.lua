return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			autoinstall = true,
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"css",
				"html",
				"javascript",
				"typescript",
        "markdown_inline",
			},
			--autotag = { enable = true },
		})
	end,
}
