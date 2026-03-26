vim.g.mapleader = " "

local keymap = vim.keymap


-- Use jk instead of ESC to exit insert mode  
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x') -- Prevents from copying what is errased with "x".

-- Increase and decrease numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- equal panes
keymap.set("n", "<leader>sx", ":close<CR>") -- close a pane

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

-- Plugins
-- Vim-maximizer plugin
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- Nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") 

-- Finder (telescope)
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- find files
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>") -- find text
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>") -- find string where the cursor is
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>") -- find in buffers
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>") -- help tags

