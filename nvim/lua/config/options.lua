-- Set netrw file explorer to use tree style listing
vim.cmd("let g:netrw_liststyle = 3")

-- Leader key configurations
vim.g.mapleader = " " -- Set space as the leader key
vim.g.maplocalleader = "," -- Set comma as the local leader key
--
-- Line numbering settings
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.number = true -- Show current line number

-- Tab and indentation settings
vim.opt.tabstop = 2 -- Number of spaces a tab counts for
vim.opt.shiftwidth = 2 -- Size of indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.autoindent = true -- Copy indent from current line when starting new line

-- Search settings
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override ignorecase if search contains uppercase
vim.opt.cursorline = true -- Highlight the current line

-- Color settings
vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.opt.background = "dark" -- Use dark color scheme
vim.opt.signcolumn = "yes" -- Always show the sign column

-- Backspace behavior
vim.opt.backspace = "indent,eol,start" -- Make backspace work as expected

-- Split window behavior
vim.opt.splitright = true -- Open new vertical splits to the right
vim.opt.splitbelow = true -- Open new horizontal splits below

-- Various UI and behavior settings
vim.opt.title = true -- Set window title
vim.opt.smartindent = true -- Do smart indenting
vim.opt.hlsearch = true -- Highlight search results
vim.opt.backup = false -- Don't create backup files
vim.opt.showcmd = true -- Show partial command in last line
vim.opt.cmdheight = 0 -- Hide command line when not in use
vim.opt.laststatus = 3 -- Global status line
vim.opt.scrolloff = 10 -- Keep 10 lines above/below cursor
vim.opt.inccommand = "split" -- Show effects of substitute command in split
vim.opt.smarttab = true -- Smart handling of tab key
vim.opt.breakindent = true -- Preserve indentation in wrapped text
vim.opt.wrap = false -- Don't wrap lines

-- File and path settings
vim.opt.path:append({ "**" }) -- Search down into subfolders

-- Ignore patterns for file operations
vim.opt.wildignore:append({ "*/node_modules/*" }) -- Ignore node_modules
vim.opt.wildignore:append({ "*/.pnpm-store/*" }) -- Ignore pnpm store
vim.opt.wildignore:append({ "*/.next/*" }) -- Ignore Next.js build
vim.opt.wildignore:append({ "*/.git*" }) -- Ignore git files

-- Additional window split settings
vim.opt.splitbelow = true -- Open horizontal splits below
vim.opt.splitright = true -- Open vertical splits to the right
vim.opt.splitkeep = "cursor" -- Keep cursor position when splitting

-- Miscellaneous settings
vim.opt.mouse = "a" -- Enable mouse in all modes
vim.opt.spell = false -- Disable spell checking
vim.opt.formatoptions:append({ "r" }) -- Auto-insert comment leader on enter
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard
vim.opt.nrformats:append("alpha") -- Enable increment/decrement for letters as well as numbers

-- Conceal settings
vim.opt.conceallevel = 0 -- Show text normally
