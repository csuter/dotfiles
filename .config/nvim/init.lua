require('cgs.plugins')

vim.g.maplocalleader = ','
vim.g.mapleader = ','

vim.opt.showcmd = true    -- Show (partial) command in status line.
vim.opt.modeline = true
vim.opt.showmatch = true  -- Show matching brackets.
vim.opt.smartcase = true  -- Do smart case matching
vim.opt.incsearch = true  -- Incremental search
vim.opt.autowrite = true  -- Automatically save before various commands
vim.opt.mouse = ''        -- Don't enable mouse usage
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.exrc = true
vim.opt.ruler = true
vim.opt.backspace = [[indent,eol,start]]
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.cmd [[set formatoptions+=j]]  -- TODO: figure out lua for this
vim.opt.joinspaces = false  -- don't double space after period on J/gq
vim.opt.number = true
vim.opt.colorcolumn = '81'
vim.cmd('colorscheme cgs')

-- Stuff I haven't translated to lua yet.
require('cgs.oldvimrc')

vim.opt.completeopt = { "menu", "menuone", "noselect" }
