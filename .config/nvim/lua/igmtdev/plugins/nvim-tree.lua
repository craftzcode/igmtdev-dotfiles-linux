-- For Better Neovim File Explorer
return {
  "nvim-tree/nvim-tree.lua", -- Better Neovim File Explorer
  dependencies = "nvim-tree/nvim-web-devicons", -- File Icons Neovim File Explorer
  config = function()
    local nvimtree = require("nvim-tree")

    -- Recommended Settings from "nvim-tree" Documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      -- Change Folder Arrow Icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- Arrow when folder is closed
              arrow_open = "", -- Arrow when folder is open
            },
          },
        },
      },
      -- Disable "window_picker" for File Explorer to work well with Window Splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    -- Set "vim.keymap" to "keymap" variable
    local keymap = vim.keymap

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" }) -- Toggle File Explorer
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle File Explorer on current file" }) -- Toggle File Explorer on Current File
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse File Explorer" }) -- Collapse File Explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh File Explorer" }) -- Refresh File Explorer
  end
}
