return {
	-- nvim-tree
	{
		"kyazdani42/nvim-tree.lua",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup()
		end,
	},

	-- neo-tree
	-- {
	-- 	"nvim-neo-tree/neo-tree.nvim",
	-- 	branch = "v3.x",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-tree/nvim-web-devicons",
	-- 		"MunifTanjim/nui.nvim",
	-- 	},
	-- 	config = function()
	-- 		require("neo-tree").setup({
	-- 		  filesystem = {
	-- 				follow_current_file = {
	-- 					enabled = true, -- Enable following the current file
	-- 				},
	-- 				hijack_netrw_behavior = "open_default", -- Ensures the netrw window behavior is taken over
	-- 				use_libuv_file_watcher = true, -- Automatically update the tree when changes happen
	-- 				filtered_items = {
	-- 					hide_dotfiles = true,
	-- 					hide_gitignored = false,
	-- 					hide_by_name = {
	-- 						-- List directories want to be hidden
	-- 						".git",
	-- 					},
	-- 				},
	-- 				bind_to_cwd = true, -- Bind tree root to the cwd
	-- 			},
	-- 		})
	-- 	end,
	-- },
}

