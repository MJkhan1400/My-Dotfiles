-- File explorer toggle
-- vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", ":Neotree toggle reveal filesystem left<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

-- for terminal toggling
vim.api.nvim_set_keymap('n', '<C-q>', ':split | terminal<CR>', { noremap = true, silent = true })


-- Telescope for fuzzy finding
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
