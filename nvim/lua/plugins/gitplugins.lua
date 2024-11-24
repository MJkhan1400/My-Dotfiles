return {
  -- GitSigns
	{
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },

	-- Lazy Git
	{
		"kdheepak/lazygit.nvim",
		lazy = true,
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
	},

	-- Git Blame
	{
    "f-person/git-blame.nvim",
    -- load the plugin at startup
    event = "VeryLazy",
    
    opts = {
        -- your configuration comes here
        enabled = true,  -- if you want to enable the plugin
        message_template = " <author> • <date> • <summary> • <<sha>>",
        date_format = "%d-%m-%Y %H:%M:%S",
        virtual_text_column = 1,  -- virtual text start column, check Start virtual text at column section for more options
    },
	},
}
