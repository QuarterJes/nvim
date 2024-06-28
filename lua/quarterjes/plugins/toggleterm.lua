return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local toggleterm = require("toggleterm")

		toggleterm.setup({
			-- configs
		})
		-- keymaps
		local keymap = vim.keymap
		keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Toggle terminal" })
	end,
}
