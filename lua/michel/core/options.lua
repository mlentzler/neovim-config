vim.cmd("let g:netrw_liststyle = 3") -- use tree style in netrw file explorer

local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- enables line number relative to current line
opt.number = true -- enables current line number

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor lines
opt.cursorline = true -- highlightes the current line

-- color scheme
opt.termguicolors = true
opt.background = "dark" --sets colorscheme that can be both light and dark to dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
