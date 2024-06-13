return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local neotree_open = false

		local function toggle_neotree()
			if neotree_open then
				vim.cmd("Neotree close")
				neotree_open = false
			else
				vim.cmd("Neotree filesystem reveal right")
				neotree_open = true
			end
		end

		vim.keymap.set("n", "<leader>e", toggle_neotree, {})
	end,
}
