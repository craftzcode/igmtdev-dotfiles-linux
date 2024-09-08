return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- Import mason
    local mason = require("mason")

    -- Import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- Enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- List of servers for mason to install
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
        "jsonls",
      },
    })

    -- mason_lspconfig.setup_handlers({
    --     -- Will be called for each installed server that doesn't have
				-- -- a dedicated handler.
				-- --
				-- function(server_name) -- default handler (optional)
				-- 	-- https://github.com/neovim/nvim-lspconfig/pull/3232
				-- 	if server_name == "tsserver" then
				-- 		server_name = "ts_ls"
				-- 	end
				-- 	local capabilities = require("cmp_nvim_lsp").default_capabilities()
				-- 	require("lspconfig")[server_name].setup({
    --
				-- 		capabilities = capabilities,
				-- 	})
				-- end,
    -- })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- Prettier formatter
        "stylua", -- Lua formatter
        "isort", -- Python formatter
        "black", -- Python formatter
        "pylint",
        "eslint_d",
      },
    })
  end,
}
