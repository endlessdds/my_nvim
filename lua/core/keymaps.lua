vim.g.mapleader = " "

local keymap = vim.keymap

----- Insert Mode -----
keymap.set("i", "kk", "<ESC>")


----- Virtual Mode -----
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


--- Normal Mode -----
-- Multiple Windows
keymap.set("n", "<leader>sv", "<C-w>v") -- Split in x
keymap.set("n", "<leader>sh", "<C-w>s") -- Split in y

-- No Highlighth
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Open Terminal --
keymap.set("n", "<C-t>", ":terminal<CR>")


----- Terminal Mode -----
keymap.set("t", "<C-k>", [[<C-\><C-n>]])


----- Plugins -----
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- buffer-line
keymap.set("n", "<C-o>", ":bnext<CR>")
keymap.set("n", "<C-i>", ":bprevious<CR>")
keymap.set("n", "<C-u>", ":bdelete!<CR>")

-- miltiple-cursors
keymap.set("n", "<C-d>", ":MultipleCursorsAddDown<CR>")
keymap.set("n", "<C-LeftMouse>", ":MultipleCursorsMouseAddDelete<CR>")
keymap.set("n", "<C-k>", ":MultipleCursorsAddJumpNextMatch<CR>")
keymap.set("n", "<C-j>", ":MultipleCursorsJumpNextMatch<CR>")
