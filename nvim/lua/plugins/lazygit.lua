return {
  "kdheepak/lazygit.nvim",
  lazy = true,
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  dependencies = { "nvim-lua/plenary.nvim" }, -- optional for floating window border decoration
  keys = { { "<leader>gg", "<cmd>LazyGit<CR>", mode = { "n" }, desc = "LazyGit" } },
}
