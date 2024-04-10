vim.g.mapleader = " "

local keymap = vim.keymap

----- 插入模式 -----
keymap.set("i", "kk", "<ESC>")

----- 视觉模式 -----
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

----- 正常模式 -----
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增
-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

----- 插件 -----
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- buffer-line
keymap.set("n", "<C-o>", ":bnext<CR>")
keymap.set("n", "<C-i>", ":bprevious<CR>")
keymap.set("n", "<C-u>", ":bdelete!<CR>")
-- 多光标
keymap.set("n", "<C-d>", ":MultipleCursorsAddDown<CR>")
keymap.set("n", "<C-LeftMouse>", ":MultipleCursorsMouseAddDelete<CR>")
keymap.set({"n", "v"}, "<C-k>", ":MultipleCursorsAddJumpNextMatch<CR>")
keymap.set({"n", "v"}, "<C-j>", ":MultipleCursorsJumpNextMatch<CR>")
