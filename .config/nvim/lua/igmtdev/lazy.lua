-- Plugin Manager
-- Bootstrap lazy so that when we open up neovim it'll get installed if it isn't already installed on our machine
local lazypalocal lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "igmtdev.plugins" }, { import = "igmtdev.plugins.lsp"} }, {
  -- To check if there's a plugin updates
  checker = {
    enabled = true,
    notify = false,
  },
  -- To disable the message that we get every time we save a new plugin file or edit
  change_detection = {
    notify = false,
  }
})
