return {
	"windwp/nvim-ts-autotag",
	config = function()
		--autotag for html, tsx, jsx(nvim-treesitter-autotag)
    require("plugins.treesitter")
	end,
}
