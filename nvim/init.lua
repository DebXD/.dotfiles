vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd("set relativenumber")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

require("lazy").setup("plugins")
require("remap")
require("set")
vim.opt.termguicolors = true
require("neovide")
require("highlightYank")

vim.cmd([[ hi! CursorLineBG guibg=#3c3836 ]])
vim.cmd([[ hi! PmenuSel guibg=#32302f guifg=NONE ]])
vim.cmd([[ hi! Pmenu guibg=#32302f guifg=#d5c4a1 ]])
vim.cmd([[ hi! CmpItemAbbrDeprecated guibg=#32302f guifg=#83a598 gui=strikethrough ]])
vim.cmd([[ hi! CmpItemKindField guibg=#32302f guifg=#bdae93 ]])
vim.cmd([[ hi! CmpItemKindProperty guibg=#32302f guifg=#fbf1c7 ]])
vim.cmd([[ hi! CmpItemKindEvent guibg=#32302f guifg=#e1dbac ]])
vim.cmd([[ hi! CmpItemKindText guibg=#32302f guifg=#83a598 ]])
vim.cmd([[ hi! CmpItemKindEnum guibg=#32302f guifg=#076678 ]])
vim.cmd([[ hi! CmpItemKindKeyword guibg=#32302f guifg=#8ec07c ]])
vim.cmd([[ hi! CmpItemKindConstant guibg=#32302f guifg=#665c54 ]])
vim.cmd([[ hi! CmpItemKindConstructor guibg=#32302f guifg=#98971a ]])
vim.cmd([[ hi! CmpItemKindReference guibg=#32302f guifg=#b16286 ]])
vim.cmd([[ hi! CmpItemKindFunction guibg=#32302f guifg=#fe8019 ]])
vim.cmd([[ hi! CmpItemKindStruct guibg=#32302f guifg=#d79921 ]])
vim.cmd([[ hi! CmpItemKindClass guibg=#32302f guifg=#b16286 ]])
vim.cmd([[ hi! CmpItemKindModule guibg=#32302f guifg=#bdae93 ]])
vim.cmd([[ hi! CmpItemKindOperator guibg=#32302f guifg=#fabd2f ]])
vim.cmd([[ hi! CmpItemKindVariable guibg=#32302f guifg=#8ec07c ]])
vim.cmd([[ hi! CmpItemKindFile guibg=#32302f guifg=#fabd2f ]])
vim.cmd([[ hi! CmpItemKindUnit guibg=#32302f guifg=#427b58 ]])
vim.cmd([[ hi! CmpItemKindSnippet guibg=#32302f guifg=#458588 ]])
vim.cmd([[ hi! CmpItemKindFolder guibg=#32302f guifg=#fb4934 ]])
vim.cmd([[ hi! CmpItemKindMethod guibg=#32302f guifg=#d79921 ]])
vim.cmd([[ hi! CmpItemKindValue guibg=#32302f guifg=#fc9487 ]])
vim.cmd([[ hi! CmpItemKindEnumMember guibg=#32302f guifg=#d65d0e ]])
vim.cmd([[ hi! CmpItemKindInterface guibg=#32302f guifg=#8ec07c ]])
vim.cmd([[ hi! CmpItemKindColor guibg=#32302f guifg=#d3d6a5 ]])
vim.cmd([[ hi! CmpItemKindTypeParameter guibg=#32302f guifg=#cecb94 ]])
