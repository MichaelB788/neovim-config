-- For help on key notation, type :h key-notation
-- Globals
vim.g.mapleader = " "

local km = vim.keymap;
local telescope = require('telescope.builtin')

km.set('n', '<leader>ff', telescope.find_files, {}) -- Fuzzy find all files in cwd
km.set('n', '<leader>fg', telescope.git_files, {}) -- Fuzzy find all git files
km.set('n', '<leader>e', ':NvimTreeFindFileToggle<Enter>') -- Toggle explorer
km.set('n', 'mp', ':MarkdownPreview<Enter>') -- MarkdownPreview

km.set({'n', 'v'}, 'yy', '"+Y') -- Yank into system clipboard
km.set('v', 'd', '"+d"') -- Cut into system clipboard
km.set('n', 'p', '"+p') -- Paste content from system clipboard below the cursor 
km.set('n', 'P', '"+P') -- Paste content from system clipboard above the cursor

km.set('n', '<leader>w', ':wall<Enter>') -- Write to all files
km.set('n', '<leader>q', ':q!<Enter>') -- Force quit the current tab

-- Insert Mode commands
km.set('i', '<C-h>', '<Left>')
km.set('i', '<C-j>', '<Down>')
km.set('i', '<C-k>', '<Up>')
km.set('i', '<C-l>', '<Right>')
km.set('i', '<C-d>', '<Del>')

-- Window/Tab Management
km.set('n', '<leader>tn', ':tabnew<Enter>') -- Open a new Tab
km.set('n', '<leader>sp', ':vsplit<Enter>') -- Split the window vertically

-- Misc.
km.set('n', '<leader>M', ':e ++ff=dos<Enter>') -- Reread the document using dos
km.set('n', 'L', 'gt') -- Move to left tab
km.set('n', 'H', 'gT') -- Move to right tab
km.set('n', 'w', '<C-w>') -- Pretense to window navigation
