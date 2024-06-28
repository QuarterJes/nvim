vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2 -- two spaces for indent
opt.shiftwidth = 2 -- two spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true

opt.cursorline = true


opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register


-- window options
opt.splitright = true
opt.splitbelow = true
