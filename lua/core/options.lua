local opt = vim.opt

-- Line Number
opt.relativenumber = true
opt.number = true

-- Tabstop
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- No Wrap
opt.wrap = false

-- Cursorline
opt.cursorline = true

-- Mouse on
opt.mouse:append("a")

-- System clipboard
opt.clipboard:append("unnamedplus")

-- Split Window 
opt.splitright = true
opt.splitbelow = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Looks
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-moon]]
