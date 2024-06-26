return {
	"mbbill/undotree",
	config = function()
    --require("undotree").setup({})
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

		vim.opt.swapfile = false
		vim.opt.backup = false
		vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
		vim.opt.undofile = true
	end,
}
