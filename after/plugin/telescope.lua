local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.oldfiles, {})
vim.keymap.set('n', '<C-f>', builtin.grep_string, {})

-- Git sutff
vim.keymap.set('n', '<leader>fc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>fgb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>fgs', builtin.git_stash, {})
vim.keymap.set('n', '<leader>fbc', builtin.git_bcommits, {})

require'telescope'.setup{
  defaults = {
    prompt_prefix = '>  ',
    selection_caret = '>  ',
    layout_strategy = "horizontal",
    layout_config = {
        height = 0.85,
        width = 0.75,
        prompt_position = 'bottom',
    },
  },
  pickers = {
    buffers  = { theme = 'ivy' },
    find_files = { theme = 'ivy' },
    git_branches = { theme = 'ivy' },
    git_stash = { theme = 'ivy' },
    git_files = { theme = 'ivy' },
    grep_string = { theme = 'ivy' },
    live_grep  = { theme = 'ivy' },
  }
}

