return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			view = {
				width = 35,
				relativenumber = true,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "->",
							arrow_open = "V",
						},
					},
				},
			},
			-- disable window_picker for
			-- explorers to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
				dotfiles = false,
			},
			git = {
				ignore = false,
			},
			update_focused_file = {
				enable = true,
				update_root = true,
			},
		})

		-- set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle ~/Desktop<CR>", { desc = "Open/Close explorer" })
		keymap.set("n", "<leader>E", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Open explorer on current path" })
	end,
}
