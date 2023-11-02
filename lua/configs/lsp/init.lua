local lspconfig = require("lspconfig")

require("configs.lsp.custom")

lspconfig.clangd.setup({})
-- lspconfig.cls.setup({})
lspconfig.tsserver.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.gopls.setup({})
lspconfig.svelte.setup({})
lspconfig.pyright.setup({})
lspconfig.astro.setup({})
lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
lspconfig.emmet_ls.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})

require("configs.lsp.mason")
require("configs.lsp.null-ls")
