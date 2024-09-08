-- Set the Neovim File Explorer to Tree
vim.cmd("let g:netrw_liststyle = 3")

-- Set the "vim.opt" to variable "opt"
local opt = vim.opt

-- Show Number Line
opt.relativenumber = true
-- Show Current Number Line
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2 -- 2 Spaces for Tabs (Prettier Default)
opt.shiftwidth = 2 -- 2 Spaces for Indent Width
opt.expandtab = true -- Expand Tab to Spaces
opt.autoindent = true -- Copy Indent from Current Line when starting new one

-- Line Wrapping
opt.wrap = false

-- Search Settings
opt.ignorecase = true -- Ignore Case when Searching
opt.smartcase = true -- If you include mixed case in your search, assumes you want Case-Sensitive

-- Highlight Cursor Line
opt.cursorline = true

-- Term Gui Colors for Colorscheme to work
opt.termguicolors = true
opt.background = "dark" -- Colorschemes that can be Light or Dark will be made Dark
opt.signcolumn = "yes" -- Show sign column so that text doesn't shift

-- Backspace
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- Split Windows
opt.splitright = true -- Split Vertical Window to the right
opt.splitbelow = true -- Split Horizontal Window to the bottom

-- Turn off Swapfile
opt.swapfile = false
