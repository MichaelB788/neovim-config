-- For help on key notation, type :h key-notation
-- Globals
vim.g.mapleader = " "

local km = vim.keymap
local builtin = require("telescope.builtin")

-- Plugin Keymaps
-- Telescope
km.set("n", "<leader>ff", builtin.find_files, {})
km.set("n", "<leader>fg", builtin.git_files, {})
km.set("n", "<leader>e", ":NvimTreeFindFileToggle<Enter>")
km.set("n", "<leader><BS>", ":NvimTreeCollapse<Enter>")

-- Markdown
km.set("n", "mp", ":MarkdownPreview<Enter>")

-- Editor keymaps
-- Yank into system clipboard
km.set("n", "yy", '"+Y')
km.set("v", "yy", '"+y')
km.set("n", "<leader>a", ":%y+<Enter>")

-- Paste from system clipboard
km.set("n", "p", '"+p')
km.set("n", "P", '"+P')

-- Cut motion
km.set("v", "d", '"+d"')

-- Write and Quit
km.set({ "n", "v" }, "<leader>w", ":wall<Enter>")
km.set({ "n", "v" }, "<leader>q", ":q!<Enter>")

-- Insert Mode commands
km.set("i", "<C-h>", "<Left>")
km.set("i", "<C-j>", "<Down>")
km.set("i", "<C-k>", "<Up>")
km.set("i", "<C-l>", "<Right>")
km.set("i", "<C-d>", "<Del>")

-- Window/Tab Management
km.set("n", "<leader>tn", ":tabnew<Enter>")
km.set("n", "<leader>sp", ":vsplit<Enter>")

-- Misc.
km.set("n", "<leader>M", ":e ++ff=dos<Enter>") -- Reread the document using dos
km.set("n", "tg", "gT") -- Reverse switch tabs
km.set("n", "w", "<C-w>") -- Window toggle
