-- Autopair for {}, [], "", (), etc...
return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- Import Nvim-Autopairs
    local autopairs = require("nvim-autopairs")

    -- Configure autopairs
    autopairs.setup({
      check_ts = true, -- Enable treesitter
      ts_config = {
        lua = { "string" }, -- Don't add pairs in lua string treesitter nodes
        javascript = { "template_string" }, -- Don't add pairs in javscript template_string treesitter nodes
        java = false, -- Don't check treesitter on java
      },
    })

    -- Import Nvim-Autopairs Completion functionality
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    -- Import Nvim-CMP plugin (Completions Plugin)
    local cmp = require("cmp")

    -- Make Autopairs and Completion work together
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
