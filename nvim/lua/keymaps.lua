-- File explorer toggle
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-n>", ":Neotree toggle reveal filesystem left<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

-- for terminal toggling
-- vim.api.nvim_set_keymap('n', '<C-q>', ':belowright split | terminal<CR>', { noremap = true, silent = true })

-- Telescope for fuzzy finding
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

-- Resize windows using Alt + arrow keys
vim.api.nvim_set_keymap('n', '<A-k>', ':resize +2<CR>', { noremap = true, silent = true })  -- Increase height
vim.api.nvim_set_keymap('n', '<A-j>', ':resize -2<CR>', { noremap = true, silent = true })  -- Decrease height
vim.api.nvim_set_keymap('n', '<A-l>', ':vertical resize +2<CR>', { noremap = true, silent = true })  -- Increase width
vim.api.nvim_set_keymap('n', '<A-h>', ':vertical resize -2<CR>', { noremap = true, silent = true })  -- Decrease width

-- close buffers
-- Close the current buffer
vim.keymap.set("n", "<leader>q", ":bd<CR>", { noremap = true, silent = true })

-- Force close the current buffer
vim.keymap.set("n", "<leader>Q", ":bd!<CR>", { noremap = true, silent = true })

-- Navigate to the previous buffer in bufferline using 'Shift+h'
vim.keymap.set("n", "H", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

-- Navigate to the next buffer in bufferline using 'Shift+l'
vim.keymap.set("n", "L", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })

