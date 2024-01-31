return {
  {
    "lunarvim/Onedarker.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme onedarker]])
      vim.api.nvim_set_hl(0, "Comment", { bg = "none", fg = "#708090" })
      -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
  }
}
