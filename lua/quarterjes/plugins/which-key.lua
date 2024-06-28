return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 200
	end,
	opts = {
		key_labels = {
			["<Tab>"] = "TAB", -- rename label
		},
		defaults = { -- rename descriptions
			["<leader><Tab>"] = { name = "Tabs" },
			["<leader>w"] = { name = "Windows" },
			["<leader>f"] = { name = "Fuzzy" },
			["<leader>h"] = { name = "gitsigns" },
			["<leader>c"] = { name = "Code actions" },
			["<leader>m"] = { name = "Format" },
			["<leader>r"] = { name = "LSP" },
			["<leader>s"] = { name = "Session" },
			["<leader>x"] = { name = "Diagnostics" },
			["<leader>l"] = { name = "LazyGit" },
		},
	},
	config = function(_, opts) -- apply description changes
		local wk = require("which-key")
		wk.setup(opts)
		wk.register(opts.defaults)
	end,
}
