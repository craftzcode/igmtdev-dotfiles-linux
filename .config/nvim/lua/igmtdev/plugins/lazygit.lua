return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- Optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- Setting the keybinding for LazyGit with 'keys' is recommended in
  -- Order to load the plugin when the command is run for the first time
  keys = {
    { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open lazy git" },
  },
}
