local null_ls = require("null-ls")

local linting = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

null_ls.setup({
	debug = false,
	sources = {
        linting.mypy,
		formatting.black,
        formatting.clang_format,
		formatting.golines,
		formatting.prettier,
		formatting.rustfmt,
		formatting.stylua,
	},
})
