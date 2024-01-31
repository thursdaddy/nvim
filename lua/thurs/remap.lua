vim.g.mapleader = " "

-- Basic file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Keep things centered
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>zz")
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "}", "}zz")
vim.keymap.set("n", "{", "{zz")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-i>", "<C-a>")
vim.keymap.set("n", "<C-d>", "<C-x>")

-- Floating terminal
vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- TODO Lookup nvim_set_keymap vs vim.keymap.set
local kb = require('thurs.kb')

-- Fugitive / Git Binds
vim.api.nvim_set_keymap('n', '<leader>gs', '<CMD>below Git<CR>', kb.noremap)
vim.api.nvim_set_keymap('n', '<leader>gc', '<CMD>below Git commit<CR>', kb.noremap)
vim.api.nvim_set_keymap('n', '<leader>gb', '<CMD>GBranches<CR>', kb.noremap)
vim.api.nvim_set_keymap('n', '<leader>g,', '<CMD>diffget //2<CR>', kb.noremap)
vim.api.nvim_set_keymap('n', '<leader>g.', '<CMD>diffget //3<CR>', kb.noremap)
vim.api.nvim_set_keymap('n', '<leader>gp', '<CMD>Git push<CR>', kb.noremap)
vim.api.nvim_set_keymap('n', '<leader>gB', '<CMD>Git blame<CR>', kb.noremap)
vim.api.nvim_set_keymap('n', '<leader>gl', '<CMD>Git pull<CR>', kb.noremap)

-- NvimTree
vim.api.nvim_set_keymap('n', '<leader>e', '<CMD>NvimTreeToggle<CR>', kb.noremap)
vim.api.nvim_set_keymap('n', '<leader>E', '<CMD>NvimTreeFocus<CR>', kb.noremap)

-- LSP and Plugin Shortcuts
vim.api.nvim_set_keymap('n', '<leader>m', '<CMD>Mason<CR>', kb.noremap)
vim.api.nvim_set_keymap('n', '<leader>l', '<CMD>Lazy<CR>', kb.noremap)

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Lua
vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
