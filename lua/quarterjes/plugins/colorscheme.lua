return {
	"folke/tokyonight.nvim",
	"olivercederborg/poimandres.nvim",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme poimandres")
	end,
}
